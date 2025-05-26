//
//  ContentView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var counter = CounterModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("カウンターアプリ")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            CounterDisplayView(counter: counter)
            CounterControlsView(counter: counter)
            
            Divider()
            
            Text("履歴")
                .font(.headline)
            
            ScrollView{
                ForEach(counter.history, id: \.self) { item in
                    Text(item)
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.vertical, 2)
                }
            }
            .frame(height: 100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
