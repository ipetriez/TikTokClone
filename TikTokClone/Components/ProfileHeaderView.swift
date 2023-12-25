//
//  ProfileHeaderView.swift
//  TikTokClone
//
//  Created by Sergey Petrosyan on 25.12.23.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                Text("Jim Carrey")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            HStack(spacing: 16) {
                UserStatsView(value: 5, title: "Following")
                UserStatsView(value: 1, title: "Followers")
                UserStatsView(value: 7, title: "Likes")
            }
            
            Button(action: {
                
            }, label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}
