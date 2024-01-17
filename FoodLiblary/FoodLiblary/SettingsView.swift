//
//  SettingsView.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import SwiftUI

struct SettingsView: View {
    @State private var isEditing = false
    @Environment(\.colorScheme) var colorScheme
    @Binding var titleOn: Bool
    @Binding var rowHeight: Double
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text(colorScheme == .light ? "Light Theme enabled" : "Dark Theme enabled")
                    Toggle("Show title list", isOn: $titleOn)
                    if titleOn {
                        Text("Navigation title enabled")
                    }
                }
                Section {
                    VStack{
                        Slider(
                            value: $rowHeight,
                            in: 40...100,
                            step: 5,
                            onEditingChanged: { editing in
                                isEditing = editing
                            }
                        )
                        Text("\(Int(rowHeight)) pt")
                        if isEditing {
                            InfoRow(post: Post.example, rowHeight: $rowHeight)
                        }
                    }
                }
            }
        }
        .navigationTitle("Settings")
    }
}

//#Preview {
//    SettingsView()
//}
