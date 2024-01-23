//
//  InfoView.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import SwiftUI
import SwiftData

struct InfoView: View {
    
    //@Query(sort: \Post.createdAt, order: .reverse) private var posts: [Post]
    //typealias arrayPost = [Post];: ObservableObject
    @Environment(\.modelContext) var modelContext
    @Binding var titleOn: Bool
    @Binding var rowHeight: Double
    //@Bindable var posts: [Post]
    @ObservedObject var posts: PostList
    
    var body: some View {
        NavigationView {
            List(posts.list) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post, rowHeight: $rowHeight)
                }
            }
            .navigationTitle(titleOn ? "Recipes" : "")
            .listStyle(.plain)
            .refreshable {
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

//#Preview {
//    InfoView()
//        .modelContainer(for: [Post.self])
//}
