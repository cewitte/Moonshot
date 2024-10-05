//
//  ContentView.swift
//  Moonshot
//
//  Created by Carlos Eduardo Witte on 05/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            // LazyVStack and LazyHStack draw content as needed, using less System resources
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    Text("Item \(String($0))")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    ContentView()
}
