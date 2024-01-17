//
//  InfoDetails.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import SwiftUI

struct InfoDetails: View {
    var post: Post
    var body: some View {
        ScrollView {
            if let uiImage = UIImage(data: post.image) {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFill()
                    .padding()
                    .shadow(radius: 10)
            }
            VStack(alignment: .leading) {
                HStack {
                    Text(post.category)
                    Divider()
                    Text(post.area)
                }
                .font(.title)
                .foregroundStyle(.brown)
                .bold()
                
                Divider()
                Text(post.descriptionRecipe)
                Divider()
                Text(post.createdAt.formatted())
                    .font(.headline)
                    .foregroundStyle(.brown)
            }
            .padding()
        }
        .navigationTitle(post.title)
    }
}

//#Preview {
//    InfoDetails(post: Post.example)
//}
