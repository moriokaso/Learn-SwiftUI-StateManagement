//
//  ContentView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NonOptimizedView()
                .tabItem {
                    Image(systemName: "tortoise")
                    Text("非最適化")
                }
            
            OptimizedView()
                .tabItem {
                    Image(systemName: "hare")
                    Text("最適化")
                }
        }
    }
}

#Preview {
    ContentView()
}
