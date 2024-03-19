//
//  FeedCell.swift
//  TikTok-SwiftUI
//
//  Created by Chima onyekwere on 3/18/24.
//

import SwiftUI

struct FeedCell: View {
    let post: Int
    var body: some View {
        ZStack {
        Rectangle()
            .fill(.pink)
            .containerRelativeFrame([.horizontal,.vertical]) // fills in height and width full
            .overlay{
                Text("Post \(post)")
                    .foregroundStyle(.white)
            }
            VStack{
                Spacer()
                HStack {
                    VStack(alignment: .leading){
                        Text("carlos.jackson")
                            .fontWeight(.semibold)
                        Text("Rocket ship prepare for tackeoff!!")
                    }
                    .foregroundStyle(.white)
                .font(.subheadline)
                    Spacer()
                    
                    VStack {
                        Button{
                            
                        } label: {
                            Image(systemName:  "heart.fill" )
                        }


                        Button{

                        } label: {
                        Image(systemName: "ellipsis.bubble.fill" )
                        }
                        
                        Button{

                        } label: {
                        Image(systemName: "bookmark.fill" )
                        }
                        
                        Button{

                        } label: {
                        Image(systemName: "arrowshape.turn.up.right.fill" )
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FeedCell(post: 2)
}
