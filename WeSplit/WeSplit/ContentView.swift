//
//  ContentView.swift
//  WeSplit
//
//  Created by Sufyan Kadiwala on 11/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var tapcount = 0
    @State private var name = ""
    let students = ["Harry", "Ron", "Hermione"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        NavigationStack{
            Form{
                Picker("Select your student", selection: $selectedStudent){
                    ForEach(students, id: \.self){
                        Text($0)
                    }
                
//                ForEach(0..<11){
//                    Text("Row \($0)")
                }
                //            TextField("Enter your name", text: $name)
                //            Text("Your name is \(name)")
            }
            .navigationTitle("Select your student")
            
            //        Button("Tap count: \(tapcount)"){
            //            tapcount += 1
            //        }
            //        NavigationStack{
            //            Form {
            //                Section {
            //                    Text("About us")
            //                }
            //                Section {
            //                    Text("Contact")
            //                    Text("Address")
            //                }
            //            }
            //            .navigationBarTitle("WeSplit")
            //            .navigationBarTitleDisplayMode(.inline)
            //        }
        }
    }
}

#Preview {
    ContentView()
}
