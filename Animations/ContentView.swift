//
//  ContentView.swift
//  Animations
//
//  Created by Fray Pineda on 9/7/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount: CGFloat = 1
    var body: some View {
        Button("Tap me") {
//            self.animationAmount += 1
        }
        .padding(40)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                            Animation.easeInOut(duration: 1)
                                .repeatForever(autoreverses: false)
                        )
        )
        .onAppear(perform: {
            self.animationAmount = 2
        })
//        .scaleEffect(animationAmount)
//        .animation(
//            Animation.easeInOut(duration: 1)
//                .repeatForever()
//        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
