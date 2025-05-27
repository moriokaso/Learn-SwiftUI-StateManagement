//
//  CounterControlsView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct OptimizedCounterControlsView: View {
    @ObservedObject var counter: CounterModel
    
    var body: some View {
        VStack(spacing: 15) {
            Text("最適化版 - 操作エリア")
                .font(.headline)
            
            HStack(spacing: 20) {
                Button("-1") {
                    counter.decrement()
                }
                .buttonStyle(.borderedProminent)
                
                Button("+1") {
                    counter.increment()
                }
                .buttonStyle(.borderedProminent)
                
                Button("リセット") {
                    counter.reset()
                }
                .buttonStyle(.bordered)
            }
        }
        .padding()
        .randomBackground() // 🎨 再描画されると背景色が変わる
        .cornerRadius(10)
        .debugRebuild("OptimizedCounterControlsView") // 🐛 再描画をログ出力
    }
}
