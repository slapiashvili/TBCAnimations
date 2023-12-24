//
//  ContentView.swift
//  TBCAnimations
//
//  Created by Salome Lapiashvili on 25.12.23.
//

import SwiftUI
struct MainView: View {
    //MARK: - properties:
    @State private var isItZoomed = false
    //MARK: -body:
    var body: some View {
        Text("TBC IT Academy")
            .font(.title2)
            .foregroundColor(isItZoomed ? Color.red : Color.blue)
            .scaleEffect(isItZoomed ? 1.5 : 1.0)
            .onAppear() {
                animateText()
            }
    }
    //MARK: -methods:
    func animateText() {
        withAnimation(
            Animation.easeInOut(duration: 2.0)
                .repeatForever(autoreverses: true)
        ) {
            self.isItZoomed.toggle()
        }
    }
}
    //MARK: -previews:
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


