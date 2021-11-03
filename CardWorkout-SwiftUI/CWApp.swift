//
//  CWApp.swift
//  CardWorkout-SwiftUI
//
//

import SwiftUI

@main
struct CWApp: App {
    let viewModel = RandomCardTimer()
    
    init() {
        viewModel.startTimer()
    }
    
    var body: some Scene {
        WindowGroup {
            CWMainView(viewModel: viewModel)
        }
    }
}
