//
//  DividerView.swift
//  Moonshot
//
//  Created by Carlos Eduardo Witte on 24/01/25.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
                .foregroundStyle(.lightBackground)
                .padding(.vertical)
    }
}

#Preview {
    DividerView()
}
