//
//  ContentView.swift
//  Day 25, RockPaperScissors
//
//  Created by Brianna Babcock on 10/2/20.
//

import SwiftUI

struct ContentView: View {
    
    let player = ["Rock", "Paper", "Scissors"]
    @State private var computer = "Scissors"
    @State private var shouldLose = true
    @State private var score = 0
    
    var body: some View {
        NavigationView {
        VStack {
            Text("Your Opponent Chose \(computer)")
                .foregroundColor(.blue)
            Text("Your Goal Is To \(shouldLose ? "WIN" : "LOSE"), What's Your Choice3'")
                .foregroundColor(.red)
            HStack {
                Button("Rock"){
                    
                }
                .foregroundColor(.green)
                .border(Color.black)
                Button("Paper") {
                    
                }
                .foregroundColor(.green)
                .border(Color.black)
                Button("Scissors") {
                    
                }
                .foregroundColor(.green)
                .border(Color.black)
            }
            
        }
            navigationBarTitle("Brain Games")
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

