//
//  MissionView.swift
//  Moonshot
//
//  Created by Carlos Eduardo Witte on 21/01/25.
//

import SwiftUI

struct MissionView: View {
    
    let mission: Mission

    var body: some View {
        ScrollView {
            VStack {
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) { width, axis in
                        width * 0.6
                    }
                    .padding(.top)
                
                // Challenge 1. Add the launch date to MissionView, below the mission badge. You might choose to format this differently given that more space is available, but it’s down to you.
                Text(mission.formmattedLaunchDate)
                    .font(.title2.bold())
                    .padding(.top)
                
                VStack(alignment: .leading) {
                    // Challenge 2. Extract one or two pieces of view code into their own new SwiftUI views – the horizontal scroll view in MissionView is a great candidate, but if you followed my styling then you could also move the Rectangle dividers out too.
                    DividerView()
                    
                    Text("Mission Highlights")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                    
                    Text(mission.description)
                    
                    DividerView()
                }
                .padding(.horizontal)
                
                // Challenge 2. Extract one or two pieces of view code into their own new SwiftUI views – the horizontal scroll view in MissionView is a great candidate, but if you followed my styling then you could also move the Rectangle dividers out too.
                HStack {
                    CrewView(mission: mission, astronauts: Bundle.main.decode("astronauts.json"))
                }
                .padding(.bottom)
            }
            .padding(.bottom)
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    return MissionView(mission: missions[2])
        .preferredColorScheme(.dark)
}
