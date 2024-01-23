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
            barChartView()
        }
        .padding()
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
    
    func barChartView() -> some View {
        Chart {
            ForEach(posts.list) { post in
                BarMark(
                    x: .value("Total count", animatedItems[post] ?? false ? 1 : 0),
                    y: .value("Dish area", post.area)
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
        .chartOverlay { proxy in
            GeometryReader { geometry in
                Rectangle().fill(.clear).contentShape(Rectangle())
                    .onTapGesture { location in
                        guard let plot = proxy.plotFrame else { return }
                        let origin = geometry[plot].origin
                        let location = CGPoint(
                            x: location.x - origin.x,
                            y: location.y - origin.y
                        )
                        guard let (_, area) = proxy.value(at: location, as: (Int, String).self) else { return }
                        print("Area: \(area)")
                    }
            }
        }
    }
}

//#Preview {
//    var array: [Post] = []
//    for i in 1..<10 {
//        let post = Post(id: String(i), title: "title \(i)", descriptionRecipe: "title \(i)", image: Post.example.image, category: "category \(i)", area: "area \(i)")
//        array.append(post)
//    }
//    
//    let postList = PostList(list: array)
//    return TopChartView(posts: postList)
//}
