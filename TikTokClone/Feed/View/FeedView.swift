//
//  FeedView.swift
//  TikTokClone
//
//  Created by Sergey Petrosyan on 24.12.23.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject private var feedVM = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(feedVM.posts) { post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear { playVideoOnChangeOfScrollPosition(postID: post.id) }
                }
            }
            .scrollTargetLayout()
        }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition) { oldValue, newValue in
            playVideoOnChangeOfScrollPosition(postID: newValue)
        }
    }
    
    private func playVideoOnChangeOfScrollPosition(postID: String?) {
        guard let currentPost = feedVM.posts.first(where: { $0.id == postID }) else { return }
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoURL)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
