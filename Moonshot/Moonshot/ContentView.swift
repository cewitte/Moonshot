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
      Button("Decode JSON") {
        let input = """
        {
            "name": "Taylor",
            "address": {
                "street": "555, Taylor Avenue",
                "city": "Nashville"
            }
        }
        """
          
          let data = Data(input.utf8)
          let decoder = JSONDecoder()
        
          
          if let user = try? decoder.decode(User.self, from: data) {
              print(user.address.city)
          }
        
      }
    }
}

#Preview {
    ContentView()
}
