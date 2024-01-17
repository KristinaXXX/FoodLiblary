//
//  InfoRow.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import SwiftUI

struct InfoRow: View {
    
    var post: Post
    @Binding var rowHeight: Double
    
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
                    .frame(width: $rowHeight.wrappedValue, height: $rowHeight.wrappedValue)
            }
        }
        .frame(height: $rowHeight.wrappedValue)
        
    }
}

//#Preview {
//    InfoRow(post: Post.example)
//        .modelContainer(for: Post.self)
//}
