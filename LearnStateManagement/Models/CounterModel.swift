//
//  CounterModel.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import Foundation

class CounterModel: ObservableObject {
    @Published var count: Int = 0
    @Published var history: [String] = []
    
    func increment() {
        count += 1
        addToHistory("カウントアップ: \(count)")
    }
    
    func decrement() {
        count -= 1
        addToHistory("カウントダウン: \(count)")
    }
    
    func reset() {
        count = 0
        history.removeAll()
    }
    
    private func addToHistory(_ action: String) {
        let timeStamp = Date().formatted(date: .omitted, time: .shortened)
        history.insert("\(timeStamp): \(action)", at: 0)
        
        if history.count > 5 {
            history.removeLast()
        }
    }
}
