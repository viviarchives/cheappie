//
//  ContentView.swift
//  cheappie
//
//  Created by Warunya on 15/8/2567 BE.
//

import SwiftUI

extension Font {
    static let Typography = TokenTypography()
}

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                        
                        .font(.Typography.caption2Medium)
                }
            
            MoreView()
                .tabItem {
                    Label("More", systemImage: "sparkles")
                        .font(.Typography.caption2Medium)
                }
        }
        .tint(.black)
    }
}

#Preview {
    ContentView()
}
