//
//  CWRulesView.swift
//  CardWorkout-SwiftUI
//

import SwiftUI

struct CWRulesView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("The value of each card represents the number of reps you should do.")
                .font(Font.callout.bold())
                .multilineTextAlignment(.center)
            
            
            Text("J = 11, Q = 12, K = 13, A = 14")
                .font(Font.callout.bold())
            
            Spacer()
                .frame(height: 20)
            
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Image(systemName: "suit.spade.fill")
                        .frame(width: 20)
                    Text(" =   Push-up")
                }
            
                HStack {
                    Image(systemName: "suit.heart.fill")
                        .foregroundColor(.red)
                        .frame(width: 20)
                    Text(" =   Sit-up")
                }
                
                HStack {
                    Image(systemName: "suit.club.fill")
                        .frame(width: 20)
                    Text(" =   Burpees")
                }
                
                HStack {
                    Image(systemName: "suit.diamond.fill")
                        .frame(width: 20)
                        .foregroundColor(.red)
                    Text(" =   Jumping Jacks")
                }
            }
            .font(Font.callout.bold())


        }
    }
}

struct CWRulesView_Previews: PreviewProvider {
    static var previews: some View {
        CWRulesView()
    }
}
