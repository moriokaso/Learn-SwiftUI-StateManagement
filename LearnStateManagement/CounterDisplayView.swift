//
//  CounterDisplayView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct OptimizedCounterDisplayView: View {
    @ObservedObject var counter: CounterModel
    
    var body: some View {
        VStack {
            Text("最適化版 - 表示エリア")
                .font(.headline)
            Text("\(counter.count)")
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(counter.count >= 0 ? .blue : .red)
        }
        .padding()
        .randomBackground() // 🎨 再描画されると背景色が変わる
        .cornerRadius(10)
        .debugRebuild("OptimizedCounterDisplayView") // 🐛 再描画をログ出力
    }
}
