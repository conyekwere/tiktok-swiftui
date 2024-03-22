//
//  ProfileHeaderView.swift
//  TikTok-SwiftUI
//
//  Created by Chima onyekwere on 3/22/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing:16) {
            VStack(spacing:8)  {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80,height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                Text("@logan.paul")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            //Stats View
            
            HStack(spacing:16){
                UserStatView(value: 5, title: "Following")
                UserStatView(value: 1, title: "Followers")
                UserStatView(value: 15, title: "Likes")

            }
            //actionBTN
            
            Button{
                
            }label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360,height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}


