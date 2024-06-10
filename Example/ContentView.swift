//
//  ContentView.swift
//  FABExample
//
//  Created by Fatih Durmaz on 7.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CardView()
                .tabItem {
                    Label("Cards", systemImage: "swift")
                }
            ListView()
                .badge(10)
                .tabItem {
                    Label("Peoples", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
