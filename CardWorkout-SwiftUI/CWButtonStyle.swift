//
//  CWButtonStyle.swift
//  CardWorkout-SwiftUI
//
//

import SwiftUI

struct CWButtonStyle: ButtonStyle {
    var backgroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .background(self.backgroundColor)
            .cornerRadius(15)
            .font(Font.title2.bold())
    }
}
