//
//  ExploreView.swift
//  TikTokClone
//
//  Created by Sergey Petrosyan on 24.12.23.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0 ..< 20) { user in
                        UserCell()
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    FriendsView()
}
