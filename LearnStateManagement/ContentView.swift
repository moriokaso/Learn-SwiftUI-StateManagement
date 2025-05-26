//
//  ContentView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("カウント: \(count)")
                .font(.largeTitle)

            HStack(spacing: 20) {
                Button("-1") {
                    count -= 1
                }
                .buttonStyle(.borderedProminent)

                Button("+1") {
                    count += 1
                }
                .buttonStyle(.borderedProminent)
            }

            Button("リセット") {
                count = 0
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

