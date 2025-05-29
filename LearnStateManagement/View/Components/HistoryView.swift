//
//  HistoryView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/27.
//

import SwiftUI

struct HistoryView: View {
    @Binding var history: [String]
    
    var body: some View {
        VStack {
            Text("History Area")
                .font(.headline)
            
            ScrollView {
                ForEach(history, id: \.self) { item in
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
    }
}
