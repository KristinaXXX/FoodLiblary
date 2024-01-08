//
//  NetworkService.swift
//  FoodLibrary
//
//  Created by Kr Qqq on 08.01.2024.
//

import Foundation
import SwiftUI
import SwiftData

class NetworkService {
   
    static func fetchRecipes(completion: @escaping (Result<Post, Error>) -> Void) async throws {
        
        let url = URL(string: "https://www.themealdb.com/api/json/v1/1/random.php")!
        let request = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: request)
        let recipes = try JSONDecoder().decode(Recipe.self, from: data)
        
        for item in recipes.meals {
            downloadImage(from: URL(string: item.strMealThumb)!) { result in
                switch result {
                case .success(let image):
                    let post = Post(id: item.idMeal,
                                    title: item.strMeal,
                                    descriptionRecipe: item.strInstructions,
                                    image: image,
                                    category: item.strCategory,
                                    area: item.strArea)
                    completion(.success(post))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }
    
    static func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    static func downloadImage(from url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(Errors.notImage))
                return
            }
            completion(.success(data))
        }
    }
}

// MARK: - Post
struct Recipe: Codable {
    let meals: [Meal]
}

// MARK: - Meal
struct Meal: Codable {
    let idMeal, strMeal, strCategory, strArea: String
    let strMealThumb: String
    let strInstructions: String
}

enum Errors: Error {
    case notImage
    case errorNetwork
}
