//
//  ContentView.swift
//  TikTokClone
//
//  Created by Sergey Petrosyan on 21.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            MainTabView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
