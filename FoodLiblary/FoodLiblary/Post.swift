//
//  Post.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import Foundation
import SwiftUI

struct Post: Identifiable {
    var id: String
    var title: String
    var description: String
    var image: Image
    var category: CategoryFood
    var area: AreaFood
}

struct CategoryFood {
    var title: String
    
    static let data: [CategoryFood] = [CategoryFood(title: "Dessert"), CategoryFood(title: "Chicken")]
    static func take(title: String) -> CategoryFood {
        guard let item = data.first(where: { $0.title == title }) else { return CategoryFood(title: title) }
        return item
    }
}

struct AreaFood {
    var title: String
    
    static let data: [AreaFood] = [AreaFood(title: "British"), AreaFood(title: "Malaysian")]
    static func take(title: String) -> AreaFood {
        guard let item = data.first(where: { $0.title == title }) else { return AreaFood(title: title) }
        return item
    }
}
