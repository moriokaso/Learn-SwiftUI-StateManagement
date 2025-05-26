//
//  CounterDisplayView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct CounterDisplayView: View {
    @ObservedObject var counter: CounterModel
    
    var body: some View {
        VStack {
            Text("現在の値")
                .font(.headline)
            Text("\(counter.count)")
                .font(.system(size: 60, weight: .bold))
                . foregroundColor(counter.count >= 0 ? .blue: .red)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}
