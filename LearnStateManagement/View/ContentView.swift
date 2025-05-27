//
//  ContentView.swift
//  LearnStateManagement
//
//  Created by morioka.so on 2025/05/26.
//

import SwiftUI

struct ContentView: View {
    init() {
        let state = CounterState()
        self._state = StateObject(wrappedValue: state)
        self.viewModel = CounterViewModel(state: state)
    }

    @StateObject private var state = CounterState()
    private var viewModel: CounterViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("All Views Rebuild")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            CounterDisplayView(state: state)
            CounterControlsView(viewModel: viewModel)
            HistoryView(state: state)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
