//
//  ContentView.swift
//  WeSplit
//
//  Created by Sufyan Kadiwala on 11/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var tapcount = 0
    var body: some View {
        
        Button("Tap count: \(tapcount)"){
            tapcount += 1
        }
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

#Preview {
    ContentView()
}
