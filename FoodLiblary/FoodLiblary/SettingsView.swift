//
//  SettingsView.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import SwiftUI

struct SettingsView: View {
    @State private var rowHeight = 5.0
    @State private var titleOn: Bool = true
    @State private var isEditing = false
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Title")) {
                    Text("Light Theme enabled")
                    
                    Toggle("Show title list", isOn: $titleOn)
                }
                Section(header: Text("Appearance")) {
                    VStack{
                        Slider(
                            value: $rowHeight,
                            in: 5...10,
                            step: 1,
                            onEditingChanged: { editing in
                                isEditing = editing
                            }
                        )
                        Text("\(Int(rowHeight)) pt")
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
