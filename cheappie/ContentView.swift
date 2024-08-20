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
                    Label("Home", systemImage: "house.fill")
                }
            
            MoreView()
                .tabItem {
                    Label("More", systemImage: "sparkles")
                }
        }
    }
}

#Preview {
    ContentView()
}
