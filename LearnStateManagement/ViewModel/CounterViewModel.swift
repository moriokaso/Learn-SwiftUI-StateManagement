//
//  CounterViewModel.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import Foundation

class CounterViewModel {
    
    init(state: CounterState) {
        self.state = state
    }
    
    func increment() {
        state.count += 1
        addToHistory("Count up: \(state.count)")
    }
    
    func decrement() {
        state.count -= 1
        addToHistory("Count down: \(state.count)")
    }
    
    // New method to increment count without affecting history
    func incrementCountOnly() {
        state.count += 1
    }
    
    // New method to decrement count without affecting history
    func decrementCountOnly() {
        state.count -= 1
    }
    
    func reset() {
        state.count = 0
        state.history.removeAll()
    }
    
    // MARK: - Private
    private func addToHistory(_ action: String) {
        let timeStamp = Date().formatted(date: .omitted, time: .shortened)
        state.history.insert("\(timeStamp): \(action)", at: 0)
        
        if state.history.count > 5 {
            state.history.removeLast()
        }
    }
    
    private let state: CounterState
}
