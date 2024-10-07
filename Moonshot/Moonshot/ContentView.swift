//
//  ContentView.swift
//  Moonshot
//
//  Created by Carlos Eduardo Witte on 05/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(1..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("Moonshot")
        }
    }
}

#Preview {
    ContentView()
}
