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
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading){
                        Text("carlos.jackson")
                            .fontWeight(.semibold)
                        Text("Rocket ship prepare for tackeoff!!")
                    }
                    .foregroundStyle(.white)
                .font(.subheadline)
                    Spacer()
                    
                    VStack(spacing:28) {
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.white)
                        
                        Button{
                            
                        } label: {
                            VStack {
                                Image(systemName:  "heart.fill" )
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                
                                Text("27")
                                    .font(.caption)
                                    .bold()
                                    
                            }.foregroundStyle(.white)
                        }
                        Button{

                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill" )
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                
                                Text("27")
                                    .font(.caption)
                                    .bold()
                                
                            }.foregroundStyle(.white)
                        }
                        
                        Button{
                        } label: {
                            VStack {
                                Image(systemName: "bookmark.fill" )
                                    .resizable()
                                    .frame(width: 22, height: 28)
                                
                                
                            }.foregroundStyle(.white)
                        }
                        
                        Button{

                        } label: {
                        Image(systemName: "arrowshape.turn.up.right.fill" )
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                        }
                    }
                    
                }.padding(.bottom,80)
            }
            .padding()
        }
    }
}

#Preview {
    FeedCell(post: 2)
}
