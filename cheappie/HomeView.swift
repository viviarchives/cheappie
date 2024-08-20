//
//  Home.swift
//  cheappie
//
//  Created by Warunya on 20/8/2567 BE.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Home 800")
                .font(.Typography.title1Bold)
                .foregroundStyle(.blue800)
            
            Text("Home 900")
                .font(.Typography.title1Bold)
                .foregroundStyle(.blue900)
        }
    }
}

#Preview {
    HomeView()
}
