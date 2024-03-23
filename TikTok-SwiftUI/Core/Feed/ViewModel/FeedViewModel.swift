//
//  FeedViewModel.swift
//  TikTok-SwiftUI
//
//  Created by Chima onyekwere on 3/22/24.
//

import Foundation


class FeedViewModel: ObservableObject{
    @Published var posts = [Post]()
    
     let VideoUrls = [
    "https://www.pexels.com/download/video/3403284",
    "https://www.pexels.com/download/video/4524863",
    "https://www.pexels.com/download/video/4058820",
    "https://www.pexels.com/download/video/4057321"
    ]
    

    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        self.posts = [
            .init(id:NSUUID().uuidString, videoUrl:VideoUrls[0]),
            .init(id:NSUUID().uuidString, videoUrl:VideoUrls[1]),
            .init(id:NSUUID().uuidString, videoUrl:VideoUrls[2]),
            .init(id:NSUUID().uuidString, videoUrl:VideoUrls[3]),
        ]
    }
}
