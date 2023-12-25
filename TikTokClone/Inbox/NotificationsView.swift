//
//  NotificationsView.swift
//  TikTokClone
//
//  Created by Sergey Petrosyan on 25.12.23.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 24) {
                    ForEach(0 ..< 10) { notification in
                        NotificationCell()
                    }
                }
            }
            .padding(.top)
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NotificationsView()
}
