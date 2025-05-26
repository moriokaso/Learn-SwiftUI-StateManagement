//
//  ContentView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var counter = CounterModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("カウント: \(counter.count)")
                .font(.largeTitle)

            HStack(spacing: 20) {
                Button("-1") {
                    counter.decrement()
                }
                .buttonStyle(.borderedProminent)

                Button("+1") {
                    counter.increment()
                }
                .buttonStyle(.borderedProminent)
            }

            Button("リセット") {
                counter.reset()
            }
            .buttonStyle(.bordered)
            
            Divider()
            
            Text("履歴").font(.headline)
            
            ForEach(counter.history, id: \.self) { item in
                Text(item)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

