//
//  ContentView.swift
//  WeSplit
//
//  Created by Sufyan Kadiwala on 11/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages: [Int] = [10, 15, 20, 25, 0]
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField(
                        "Check amount",
                        value: $checkAmount,
                        format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                Section("How much tip do you want to leave?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
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










//NavigationStack{
//            Form{
//                Picker("Select your student", selection: $selectedStudent){
//                    ForEach(students, id: \.self){
//                        Text($0)
//                    }
//
////                ForEach(0..<11){
////                    Text("Row \($0)")
//                }
//                //            TextField("Enter your name", text: $name)
//                //            Text("Your name is \(name)")
//            }
//            .navigationTitle("Select your student")
//
//            //        Button("Tap count: \(tapcount)"){
//            //            tapcount += 1
//            //        }
//            //        NavigationStack{
//            //            Form {
//            //                Section {
//            //                    Text("About us")
//            //                }
//            //                Section {
//            //                    Text("Contact")
//            //                    Text("Address")
//            //                }
//            //            }
//            //            .navigationBarTitle("WeSplit")
//            //            .navigationBarTitleDisplayMode(.inline)
//            //        }
//        }
