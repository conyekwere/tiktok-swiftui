//
//  NotificationCell.swift
//  TikTok-SwiftUI
//
//  Created by Chima onyekwere on 3/21/24.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack(spacing:12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 35,height: 35)
                .foregroundStyle(Color(.systemGray5))
            HStack {
                Text("mackeroto.verstarpen5354 ")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text("liked one of your posts. ")
                    .font(.footnote) +
                
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Rectangle()
                .frame(width: 48,height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    NotificationCell()
}
