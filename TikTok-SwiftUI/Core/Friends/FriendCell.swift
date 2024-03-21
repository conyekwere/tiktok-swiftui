//
//  FriendCell.swift
//  TikTok-SwiftUI
//
//  Created by Chima onyekwere on 3/20/24.
//

import SwiftUI

struct FriendCell: View {
    var body: some View {
        HStack(spacing:12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48,height: 48)
                .foregroundStyle(Color(.systemGray5))
            VStack(alignment:.leading) {
                Text("test_user")
                    .font(.subheadline)
                .fontWeight(.semibold)
                Text("Test name")
                    .font(.footnote)
            }
            Spacer()
        }
    }
}

#Preview {
    FriendCell()
}
