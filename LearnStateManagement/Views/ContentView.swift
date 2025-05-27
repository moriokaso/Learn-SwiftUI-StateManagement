//
//  ContentView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var counter = CounterModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("全てのViewがリビルド")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            CounterDisplayView(counter: counter)
            CounterControlsView(counter: counter)
            HistoryView(counter: counter)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
