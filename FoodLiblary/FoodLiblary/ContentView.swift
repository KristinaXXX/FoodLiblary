//
//  ContentView.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 06.01.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        MainView()
            .modelContainer(for: [Post.self])
    }
}

struct MainView: View {
    
    @AppStorage(Settings.titleOn) var titleOn: Bool = true
    @AppStorage(Settings.rowHeight) var rowHeight: Double = 40.0
    @Query(sort: \Post.createdAt, order: .reverse) var posts: [Post]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        let list = PostList(list: posts)
        TabView {
            InfoView(titleOn: $titleOn, rowHeight: $rowHeight, posts: list)
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
  //              .modelContainer(for: [Post.self])
            TopChartView(posts: list)
                .tabItem {
                    Label("Top chart", systemImage: "chart.bar.doc.horizontal")
                }
//                .modelContainer(for: [Post.self])
            SettingsView(titleOn: $titleOn, rowHeight: $rowHeight)
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

#Preview {
    ContentView()
}
