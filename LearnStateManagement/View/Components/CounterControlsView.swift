//
//  CounterControlsView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct CounterControlsView: View {
    let viewModel: CounterViewModel
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Control Area")
                .font(.headline)
            
            HStack(spacing: 20) {
                Button("-1") {
                    viewModel.decrement()
                }
                .buttonStyle(.borderedProminent)
                
                Button("+1") {
                    viewModel.increment()
                }
                .buttonStyle(.borderedProminent)
                
                Button("リセット") {
                    viewModel.reset()
                }
                .buttonStyle(.bordered)
            }
            
            HStack(spacing: 20) {
                Button("Count Only -1") {
                    viewModel.decrementCountOnly()
                }
                .buttonStyle(.bordered)
                
                Button("Count Only +1") {
                    viewModel.incrementCountOnly()
                }
                .buttonStyle(.bordered)
            }
        }
        .padding()
        .randomBackground() // 🎨 再描画されると背景色が変わる
        .cornerRadius(10)
    }
}
