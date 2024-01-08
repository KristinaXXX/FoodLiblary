//
//  InfoView.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(Post.make()) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
            }
            .navigationTitle("Recipes")
            .listStyle(.plain)
        }
    }
}

#Preview {
    InfoView()
}
