//
//  InfoView.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import SwiftUI
import SwiftData

struct InfoView: View {
    
    @Query(sort: \Post.createdAt) private var posts: [Post]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationView {
            List(posts) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
            }
            .navigationTitle("Recipes")
            .listStyle(.plain)
            .refreshable {
                await loadNewData()
            }
            .task {
                await loadNewData()
            }
        }
    }
}

extension InfoView {
    private func loadNewData() async {
        do {
            try await NetworkService.fetchRecipes() { result in
                switch result {
                case .success(let post):
                    modelContext.insert(post)
                case .failure(let failure):
                    print(failure)
                }
            }
        } catch {
            print(error)
        }
    }
}

#Preview {
    InfoView()
        .modelContainer(for: [Post.self])
}
