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
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 40.0, height: 40.0)
        }
    }
}

#Preview {
    InfoRow(post: Post.make().first!)
}
