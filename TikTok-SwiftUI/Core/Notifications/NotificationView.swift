//
//  NotificationView.swift
//  TikTok-SwiftUI
//
//  Created by Chima onyekwere on 3/21/24.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0 ..< 20){ friend in
                        NotificationCell()
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    NotificationView()
}
