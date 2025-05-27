//
//  OptimizedView.swift.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/27.
//

import SwiftUI

struct OptimizedView: View {
    @StateObject private var counter = CounterModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("最適化版（分割）")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            OptimizedCounterDisplayView(counter: counter)
            OptimizedCounterControlsView(counter: counter)
            OptimizedHistoryView(counter: counter)
        }
        .padding()
        .debugRebuild("OptimizedView 親") // 🐛 再描画をログ出力
    }
}
