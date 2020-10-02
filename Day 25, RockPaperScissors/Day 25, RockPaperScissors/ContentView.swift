//
//  ContentView.swift
//  Day 25, RockPaperScissors
//
//  Created by Brianna Babcock on 10/2/20.
//

import SwiftUI

struct ContentView: View {
    
    let player = ["Throat Punch", "Eye jab", "Laser Pen"]
    let computer = ["Throat Punch", "Eye jab", "Laser Pen"]
    @State private var shouldLose = true
    @State private var score = 0
    @State private var opponentChoice = 0
    
    var body: some View {
        
        VStack {
            Text("Your Opponent Chose \(computer[opponentChoice])").foregroundColor(.red)
            
            Text("Your Goal Is To \(String(shouldLose ? "Lose" : "Win"))").foregroundColor(.blue)
            
            Text("Score \(score)").foregroundColor(.purple)
            
            HStack {
                Button("Throat Punch"){
                    userSelectedChoice(choice: 0)
                }.foregroundColor(.green)
                
                Button("Eye Jab") {
                    userSelectedChoice(choice: 1)
                }.foregroundColor(.orange
                )
                
                Button("Laser Pen") {
                    userSelectedChoice(choice: 2)
                }.foregroundColor(.yellow)
            }
        }
    }
    
    func updateOpponentChoice() {
        opponentChoice = Int.random(in: 0..<3)
        shouldLose = Bool.random()
    }
    
    func userSelectedChoice(choice: Int) {
        if shouldLose{
            if opponentChoice == 0 && choice == 2 {
                score += 1
            } else if choice < opponentChoice {
                score += 1
            }
            
        } else {
            if opponentChoice == 0 && choice == 2 {
                score += 1
            } else if opponentChoice < choice {
                score += 1
            }
        }
        updateOpponentChoice()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
