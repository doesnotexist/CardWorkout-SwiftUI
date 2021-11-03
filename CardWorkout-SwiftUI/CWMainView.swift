//
//  CWMainView.swift
//  CardWorkout-SwiftUI
//
//

import SwiftUI

struct CWMainView: View {
    @ObservedObject var viewModel: RandomCardTimer
    @State private var showingRules = false
   
    var body: some View {
        VStack {
            Button( action: {viewModel.stopTimer() }) {
                Image(uiImage: UIImage(named: viewModel.cardName)!)
                    .resizable()
                    .frame(width: 250, height: 350)
            }
            
            Spacer()
                .frame(height: 30)
            
            HStack {
                Button(action: { viewModel.startTimer() }) {
                    Text("Restart")
                    .frame(width: 115, height: 50)
                }
                .buttonStyle(CWButtonStyle(backgroundColor: .green))
                
                Spacer()
                    .frame(width: 20)
                
                Button(action: {
                    showingRules.toggle()
                }) {
                    Text("Rules")
                    .frame(width: 115, height: 50)
                }
                .buttonStyle(CWButtonStyle(backgroundColor: .blue))
                .sheet(isPresented: $showingRules,
                       content: {
                    CWRulesView()
                })
            }
        }
    }
}

struct CWMainView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = RandomCardTimer()
        CWMainView(viewModel: viewModel)
    }
    
}
