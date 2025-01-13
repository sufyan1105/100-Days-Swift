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
    
    let tipPercentages: [Int] = [10, 15, 20, 25, 30]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField(
                        "Check amount",
                        value: $checkAmount,
                        format: .currency(code: Locale.current.currency?.identifier ?? "USD")
                    )
                    .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section {
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
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
