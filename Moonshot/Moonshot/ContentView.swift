//
//  ContentView.swift
//  Moonshot
//
//  Created by Carlos Eduardo Witte on 05/10/24.
//

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView()
}
