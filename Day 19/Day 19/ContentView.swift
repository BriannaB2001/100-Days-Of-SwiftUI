//
//  ContentView.swift
//  Day 19
//
//  Created by Brianna Babcock on 9/23/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputUnit = ""
    @State private var inputNumber = ""
    @State private var outputUnit = ""
    let inputUnits = ["Farenheight", "Celcius"]
    
    var body: some View {
        
            Form {
                Section(header: Text("What Unit would You like To Start With")) {
                    TextField("Degree", text: $inputNumber)
                    
                    Picker("Temperature Unit", selection: $inputUnit) {
                        ForEach(0 ..< inputUnits.count) {
                            Text("\(self.inputUnits[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Result")) {
                    Text("\(outputUnit)°")
                }
                
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
