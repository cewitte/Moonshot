//
//  ListLayoutView.swift
//  Moonshot
//
//  Created by Carlos Eduardo Witte on 24/01/25.
//

import SwiftUI

struct ListLayoutView: View {
    let astronauts: [String: Astronaut]
    
    let missions: [Mission]
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            List {
                
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission)
                    } label: {
                        HStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text(mission.displayName)
                                    .font(.title3)
                                
                                Text(mission.formmattedLaunchDate)
                                    .font(.caption)
                            }
                            
                        }
                        
                    }
                }
            }
            .listStyle(.plain)
            .listRowBackground(Color.darkBackground)
            .navigationTitle(Text("Moonshot"))
//            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .padding(.top, 20)
        }
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    return ListLayoutView(astronauts: astronauts, missions: missions)
}
