//
//  UserStatsView.swift
//  TikTokClone
//
//  Created by Sergey Petrosyan on 25.12.23.
//

import SwiftUI

struct UserStatsView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStatsView(value: 4, title: "Followers")
}
