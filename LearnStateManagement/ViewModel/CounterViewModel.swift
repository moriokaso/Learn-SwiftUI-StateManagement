//
//  CounterViewModel.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

class CounterViewModel {
    @ObservedObject var model = CounterModel()

    func increment() {
        model.count += 1
        addToHistory("Count up: \(model.count)")
    }
    
    func decrement() {
        model.count -= 1
        addToHistory("Count down: \(model.count)")
    }
    
    // New method to increment count without affecting history
    func incrementCountOnly() {
        model.count += 1
    }
    
    // New method to decrement count without affecting history
    func decrementCountOnly() {
        model.count -= 1
    }
    
    func reset() {
        model.count = 0
        model.history.removeAll()
    }
    
    // MARK: - Private
    private func addToHistory(_ action: String) {
        let timeStamp = Date().formatted(date: .omitted, time: .shortened)
        model.history.insert("\(timeStamp): \(action)", at: 0)
        
        if model.history.count > 5 {
            model.history.removeLast()
        }
    }
}
