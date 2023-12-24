//
//  FeedCell.swift
//  TikTokClone
//
//  Created by Sergey Petrosyan on 24.12.23.
//

import SwiftUI

struct FeedCell: View {
    
    let post: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.clear)
                .containerRelativeFrame([.horizontal, .vertical])
                .overlay {
                    Text("Post \(post)")
                        .foregroundStyle(.black)
                }
            
            VStack {
                Spacer()
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("Uploader's name")
                            .fontWeight(.semibold)
                        Text("Rocket ship prepare for take off!🚀🚀")
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    VStack(spacing: 28) {
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundColor(.gray)
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                .foregroundColor(.black)
                                Text("27")
                                    .font(.caption)
                                    .foregroundColor(.black)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                .foregroundColor(.black)
                                Text("27")
                                    .font(.caption)
                                    .foregroundColor(.black)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22, height: 28)
                                .foregroundColor(.black)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.black)
                        }
                    }
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
    }
}

#Preview {
    FeedCell(post: 2)
}
