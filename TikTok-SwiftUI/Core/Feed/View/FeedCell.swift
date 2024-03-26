//
//  FeedCell.swift
//  TikTok-SwiftUI
//
//  Created by Chima onyekwere on 3/18/24.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post: Post
    var player:AVPlayer
    
    
    init(post:Post, player:AVPlayer){
        self.post = post
        self.player  =  player
    }
    
    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal,.vertical])
            
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
                                Image(systemName: "heart.fill" )
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
        .onTapGesture{
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            @unknown default:
                break
            }
    
            
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoUrl:"https://www.pexels.com/download/video/4057321"),player:AVPlayer())
}
