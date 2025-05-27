//
//  NonOptimizedView.swift.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/27.
//

import SwiftUI

struct NonOptimizedView: View {
    @StateObject private var counter = CounterModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("非最適化版（全部まとめて）")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // 表示エリア
            VStack {
                Text("表示エリア")
                    .font(.headline)
                Text("\(counter.count)")
                    .font(.system(size: 60, weight: .bold))
                    .foregroundColor(counter.count >= 0 ? .blue : .red)
            }
            .padding()
            .randomBackground() // 🎨 毎回全体が再描画される
            .cornerRadius(10)
            
            // 操作エリア
            VStack(spacing: 15) {
                Text("操作エリア")
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
            .randomBackground() // 🎨 毎回全体が再描画される
            .cornerRadius(10)
            
            // 履歴エリア
            VStack {
                Text("履歴エリア")
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
            .randomBackground() // 🎨 毎回全体が再描画される
            .cornerRadius(10)
        }
        .padding()
        .debugRebuild("NonOptimizedView 全体") // 🐛 再描画をログ出力
    }
}
