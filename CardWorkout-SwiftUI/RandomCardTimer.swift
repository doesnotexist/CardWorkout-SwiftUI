//
//  RandomCardTimer.swift
//  CardWorkout-SwiftUI
//

import SwiftUI
import Combine

class RandomCardTimer: ObservableObject {
    @Published var cardName: String = "AS"
    
    private var cancellable: AnyCancellable?
    
    func startTimer() {
        cancellable = Timer.publish(
            every: 0.1,
            on: .main,
            in: .common
        )
        .autoconnect()
        .sink { [weak self] _ in
            self?.cardName = CardDeck.shortNames.randomElement() ?? "AS"
        }
    }
    
    func stopTimer() {
        cancellable = nil
    }

}
