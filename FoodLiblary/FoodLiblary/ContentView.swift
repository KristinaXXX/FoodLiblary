//
//  ContentView.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 06.01.2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage(Settings.titleOn) var titleOn: Bool = true
    @AppStorage(Settings.rowHeight) var rowHeight: Double = 40.0
    
    var body: some View {
        TabView {
            InfoView(titleOn: $titleOn, rowHeight: $rowHeight)
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .modelContainer(for: [Post.self])
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "abc")
                }
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
