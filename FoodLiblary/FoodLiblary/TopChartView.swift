//
//  HelloView.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import SwiftUI
import Charts
import SwiftData

struct TopChartView: View {
    @State private var animatedItems: [Post: Bool] = [:]
    @ObservedObject var posts: PostList
    var body: some View {
        VStack(alignment: .leading) {
            Text("Total count: \(posts.list.count)")
                    .font(.title)
            BarChartView(animatedItems: $animatedItems, posts: posts)
        }
        .padding()
    }
}

struct BarChartView: View {
    @Binding var animatedItems: [Post: Bool]
    @ObservedObject var posts: PostList
    
    var body: some View {
        Chart {
            ForEach(posts.list) { post in
                BarMark(
                    x: .value("Total count", animatedItems[post] ?? false ? 1 : 0),
                    y: .value("Dish area", post.area),
                    width: 20
                )
                .foregroundStyle(by: .value("Dish category", post.category))
                .cornerRadius(5)
            }
        }
        
        .onAppear {
            chartAnimation()
        }
        .onChange(of: posts.list) {
            chartAnimation()
        }
        .chartScrollableAxes(.vertical)
        .chartYVisibleDomain(length: 10)
    }
    
    func chartAnimation() {
        for (index, post) in posts.list.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.01) {
                withAnimation(
                    .interactiveSpring(response: 0.3, dampingFraction: 0.5, blendDuration: 0)) {
                    animatedItems[post] = true
                    
                }
            }
        }
    }
}
