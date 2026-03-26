//
//  ContentView.swift
//  SplitBill
//
//  Created by Walker Valentinus Simanjuntak on 26/03/26.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    @FocusState private var amountIsFocused: Bool
    
    // Calculate total amount of price per person
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople)
        let tipSelection = Double(tipPercentage)
        let tipValue = (checkAmount / 100) * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    var body: some View {
        NavigationStack {
            Form {
                // Section for check amount
                Section("How much is the bill?") {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }
                
                // Section for number of people using picker
                Section("How many people are sharing?"){
                    Picker("Number of People", selection: $numberOfPeople){
                        ForEach(0..<100){
                            Text("\($0) people")
                        }
                    }
                    // Picker style, when clicked goes to another screen
                    .pickerStyle(.navigationLink)
                }
                
                // Section for tip percentage
                Section("How much tip do you want to leave?"){
                    // Amount of Tip Percentage
                    Picker("Amount of Tip Percentage", selection: $tipPercentage){
                        ForEach(0..<101){
                            Text("\($0)%")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                // Section for the amount of check + tip percentage
                Section("Bill amount + Tip") {
                    // Return the total amount plus tip
                    Text((checkAmount + (checkAmount * Double(tipPercentage) / 100)), format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Section("Bill amount per person") {
                    // Return the total amount per person
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
