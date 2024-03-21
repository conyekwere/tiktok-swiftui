//
//  FriendView.swift
//  TikTok-SwiftUI
//
//  Created by Chima onyekwere on 3/20/24.
//

import SwiftUI

struct FriendView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0 ..< 20){ friend in
                        FriendCell()
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Friends")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    FriendView()
}
