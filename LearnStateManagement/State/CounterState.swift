//
//  CounterState.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/27.
//

import SwiftUI

class CounterState: ObservableObject {
    @Published var count: Int = 0
    @Published var history: [String] = []
}
