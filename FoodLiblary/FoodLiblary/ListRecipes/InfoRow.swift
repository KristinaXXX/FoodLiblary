//
//  InfoRow.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import SwiftUI

struct InfoRow: View {
    var post: Post
    var body: some View {
        HStack {
            Text(post.title)
                .padding(.leading, 10.0)
            Spacer()
            if let uiImage = UIImage(data: post.image) {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 40.0, height: 40.0)
            }
        }
    }
}

//#Preview {
//    InfoRow(post: Post.example)
//        .modelContainer(for: Post.self)
//}
