//
//  FeedView.swift
//  TikTok-SwiftUI
//
//  Created by Chima onyekwere on 3/17/24.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    var body: some View {
        ScrollView{
            LazyVStack(spacing:0 ){
                ForEach(viewModel.posts){ post in
                    FeedCell(post: post)
                    
                }
            }.scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}