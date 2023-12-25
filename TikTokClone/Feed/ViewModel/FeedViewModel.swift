//
//  FeedViewModel.swift
//  TikTokClone
//
//  Created by Sergey Petrosyan on 25.12.23.
//

import Foundation

final class FeedViewModel: ObservableObject {
    @Published var posts: [Post]
    let videoURLs = [
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
    ]
    
    init(posts: [Post] = [Post]()) {
        self.posts = posts
        if posts.isEmpty {
            fetchPosts()
        }
    }
    
    func fetchPosts() {
        self.posts = [
            Post(id: NSUUID().uuidString, videoURL: videoURLs[0]),
            Post(id: NSUUID().uuidString, videoURL: videoURLs[1]),
            Post(id: NSUUID().uuidString, videoURL: videoURLs[2]),
            Post(id: NSUUID().uuidString, videoURL: videoURLs[3]),
            Post(id: NSUUID().uuidString, videoURL: videoURLs[4]),
            Post(id: NSUUID().uuidString, videoURL: videoURLs[5])
        ]
    }
}
