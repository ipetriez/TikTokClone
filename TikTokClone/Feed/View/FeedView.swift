//
//  FeedView.swift
//  TikTokClone
//
//  Created by Sergey Petrosyan on 24.12.23.
//

import SwiftUI

struct FeedView: View {
    @StateObject var feedVM = FeedViewModel()
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(feedVM.posts) { post in
                    FeedCell(post: post)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
