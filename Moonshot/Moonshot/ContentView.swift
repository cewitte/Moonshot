//
//  ContentView.swift
//  Moonshot
//
//  Created by Carlos Eduardo Witte on 05/10/24.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    @State private var showingGrid = false
    
    var body: some View {
        
        // Challenge 3. For a tough challenge, add a toolbar item to ContentView that toggles between showing missions as a grid and as a list.
        TabView {
            GridLayoutView(astronauts: astronauts, missions: missions)
                .tabItem {
                    Label("Grid", systemImage: "square.grid.2x2")
                }
                    
            ListLayoutView(astronauts: astronauts, missions: missions)
                .tabItem {
                    Label("List", systemImage: "list.star")
            }
        }
    }
}

#Preview {
    ContentView()
}
