//
//  ViewExtension.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/27.
//

import SwiftUI

extension View {
    func debugRebuild(_ label: String) -> some View {
        let _ = print("🔄 \(label) が再描画されました - \(Date().formatted(.dateTime.hour().minute().second().secondFraction(.fractional(3))))")
        return self
    }
    
    func randomBackground() -> some View {
        self.background(
            Color(
                red: Double.random(in: 0.8...1.0),
                green: Double.random(in: 0.8...1.0),
                blue: Double.random(in: 0.8...1.0)
            ).opacity(0.3)
        )
    }
}
