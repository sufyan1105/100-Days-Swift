//
//  ContentView.swift
//  WeSplit
//
//  Created by Sufyan Kadiwala on 11/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Form {
                Section {
                    Text("About us")
                }
                Section {
                    Text("Contact")
                    Text("Address")
                }
            }
            .navigationBarTitle("WeSplit")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
