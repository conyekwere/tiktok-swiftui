//
//  CurrentUserProfileView.swift
//  TikTok-SwiftUI
//
//  Created by Chima onyekwere on 3/22/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing:2) {
                    // profile header
                    ProfileHeaderView()
                    // profile grid
                    ProfileGridView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
