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
                    .frame(width: $rowHeight.wrappedValue, height: $rowHeight.wrappedValue)
                    .cornerRadius(20)
            }
        }
        .frame(height: $rowHeight.wrappedValue)
        
    }
}

#Preview {
    @State var rowHeight: Double = 40
    return InfoRow(post: Post.example, rowHeight: $rowHeight)
        .modelContainer(for: Post.self)
}
