//
//  ViewExtension.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/27.
//

import SwiftUI

extension View {
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
