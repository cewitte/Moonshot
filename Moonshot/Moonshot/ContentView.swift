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
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) { mission in
                        NavigationLink {
                            MissionView(mission: mission)
                        } label: {
                            VStack {
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding()
                                
                                VStack {
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                    
                                    Text(mission.formmattedLaunchDate)
                                        .font(.caption)
                                        .foregroundStyle(.white.opacity(0.5))
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(.rect(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackground)
                            )
                            
                        }
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle(Text("Moonshot"))
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}
