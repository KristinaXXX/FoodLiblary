//
//  ContentView.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 06.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            InfoView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "abc")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

#Preview {
    ContentView()
}
