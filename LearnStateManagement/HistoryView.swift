//
//  HistoryView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/27.
//

import SwiftUI

struct OptimizedHistoryView: View {
    @ObservedObject var counter: CounterModel
    
    var body: some View {
        VStack {
            Text("最適化版 - 履歴エリア")
                .font(.headline)
            
            ScrollView {
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
        .randomBackground() // 🎨 再描画されると背景色が変わる
        .cornerRadius(10)
        .debugRebuild("OptimizedHistoryView") // 🐛 再描画をログ出力
    }
}
