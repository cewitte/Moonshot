//
//  Mission.swift
//  Moonshot
//
//  Created by Carlos Eduardo Witte on 19/01/25.
//

import Foundation

struct Mission: Codable, Identifiable {
    // Nested struct.
    // One struct placed inside another.
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
}
