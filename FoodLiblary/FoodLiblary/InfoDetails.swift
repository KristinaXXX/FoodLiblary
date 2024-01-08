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
            post.image
                .resizable()
                .scaledToFit()
                .padding()
                .clipShape(.containerRelative)
                .shadow(radius: 10)
            VStack(alignment: .leading) {
                HStack {
                    Text(post.category.title)
                    Divider()
                    Text(post.area.title)
                }
                .font(.title)
                .foregroundStyle(.brown)
                .bold()
                
                Text(post.description)
            }
            .padding()            
        }
        .navigationTitle(post.title)
    }
}

#Preview {
    InfoDetails(post: Post.make().first!)
}
