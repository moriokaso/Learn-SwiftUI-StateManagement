//
//  CounterControlsView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct CounterControlsView: View {
    @ObservedObject var counter: CounterModel
    
    var body: some View {
        VStack(spacing: 15) {
            Text("操作")
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
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}
