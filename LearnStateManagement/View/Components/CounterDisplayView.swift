//
//  CounterDisplayView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct CounterDisplayView: View {
    @ObservedObject var state: CounterState
    
    var body: some View {
        VStack {
            Text("Display Area")
                .font(.headline)
            Text("\(state.count)")
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(state.count >= 0 ? .blue : .red)
        }
        .padding()
        .randomBackground() // 🎨 再描画されると背景色が変わる
        .cornerRadius(10)
    }
}
