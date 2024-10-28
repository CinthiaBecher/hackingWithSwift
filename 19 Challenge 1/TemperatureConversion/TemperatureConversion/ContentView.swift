//
//  ContentView.swift
//  TemperatureConversion
//
//  Created by Cinthia Becher on 27/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var initialTemperature = 0.0
    @State private var selectedUnit = "C"
    @State private var targetUnit = "F"
    
    let units = ["C", "F", "K"]

    
    var convertTemp: Double {
            switch (selectedUnit, targetUnit) {
            case ("C", "F"):
                return (initialTemperature * 9 / 5) + 32
            case ("C", "K"):
                return initialTemperature + 273.15
            case ("F", "C"):
                return (initialTemperature - 32) * 5 / 9
            case ("F", "K"):
                return (initialTemperature + 459.67) * 5 / 9
            case ("K", "C"):
                return initialTemperature - 273.15
            case ("K", "F"):
                return (initialTemperature * 9 / 5) - 459.67
            default:
                return initialTemperature
            }
        }
    
    @FocusState private var tempIsFocused: Bool

    
    var body: some View {
        NavigationStack {
            Form{
                Section{
                    TextField("Temperature", value: $initialTemperature, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($tempIsFocused)


                    Picker("From", selection: $selectedUnit) {
                                            ForEach(units, id: \.self) {
                                                Text($0)
                                            }
                                        }
                                        .pickerStyle(.navigationLink)
                                    }
                
                Section("Convert to:"){
                    Picker("Tip percentage", selection: $targetUnit){
                        ForEach(units, id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Result"){
                    Text(convertTemp, format: .number)
                }
            }
            .navigationTitle("TempConversion")
            .toolbar {
                if tempIsFocused {
                    Button("Done") {
                        tempIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
