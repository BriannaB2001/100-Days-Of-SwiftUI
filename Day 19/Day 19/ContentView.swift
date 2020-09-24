//
//  ContentView.swift
//  Day 19
//
//  Created by Brianna Babcock on 9/23/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputUnit = 0
    @State private var inputNumber = ""
    @State private var outputUnit = 0
    
    let inputUnits = ["Farenheight", "Celcius", "Kelvin"]
    let outputUnits = ["Farenheight", "Celcius", "Kelvin"]
    
    var tempToTemp: Double {
        let unitToConvert = Double(inputNumber) ?? 0
        
        switch (inputUnit, outputUnit) {
        case (0,1):
            // f - c
            return (unitToConvert - 32) * 1.8
        case (0,2):
            // f - k
            return (unitToConvert - 32) * 1.8 + 273.15
        
        case (1,0):
            // c - f
            return unitToConvert * 1.8 + 32
            
        case (1,2):
            // c - k
            return unitToConvert + 273.15
            
        case (2,1):
            // k - c
            return unitToConvert - 273.15
        case (2,0):
            // k - f
            return (unitToConvert - 273.15) * 1.8 + 32
            
        default:
            return unitToConvert
        }
        
    }
    
    var body: some View {
        
        NavigationView {
        
            Form {
                Section(header: Text("What Unit Are You Starting With")) {
                    TextField("Enter Degree", text: $inputNumber)
                    
                    Picker("Temperature Unit", selection: $inputUnit) {
                        ForEach(0 ..< inputUnits.count) {
                            Text("\(self.inputUnits[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("What Unit Would You Like To Convert To")) {
                    
                    Picker("Temperature Unit", selection: $outputUnit) {
                        ForEach(0 ..< outputUnits.count) {
                            Text("\(self.outputUnits[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Result")) {
                    Text("\(tempToTemp, specifier: "%.2f")°")
                }
               
                .navigationBarTitle("TempConverter")
            }
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
