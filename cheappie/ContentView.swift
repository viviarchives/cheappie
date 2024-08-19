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
        VStack {
            Text("Large Title Regular")
                .font(.Typography.largeTitleRegular)
            Text("Large Title Bold")
                .font(.Typography.largeTitleBold)
            
            Text("Title 1 Regular")
                .font(.Typography.title1Regular)
            Text("Title 2 Bold")
                .font(.Typography.title1Bold)
            
            Text("Title 2 Regular")
                .font(.Typography.title2Regular)
            Text("Title 2 Bold")
                .font(.Typography.title2Bold)
            
            Text("Title 3 Regular")
                .font(.Typography.title3Regular)
            Text("Title 3 Bold")
                .font(.Typography.title3Bold)
            
            Text("Headline Semibold")
                .font(.Typography.headlineSemibold)
            Text("Headline Semibold Italic")
                .font(.Typography.headlineSemiboldItalic)
            
            Text("Subheadline Bold")
                .font(.Typography.subheadlineBold)
            Text("Subheadline Italic")
                .font(.Typography.subheadlineItalic)
            
            Text("Body Bold")
                .font(.Typography.bodyBold)
            Text("Body Regular")
                .font(.Typography.bodyRegular)
            Text("Body Italic")
                .font(.Typography.bodyItalic)
            Text("Body Bold Italic")
                .font(.Typography.bodyBoldItalic)
            
            Text("Caption 1 Regular")
                .font(.Typography.caption1Regular)
            Text("Caption 1 Bold")
                .font(.Typography.caption1Bold)
            Text("Caption 1 Italic")
                .font(.Typography.caption1Italic)
            Text("Caption 1 Bold Italic")
                .font(.Typography.caption1BoldItalic)
            
            Text("Caption 2 Medium")
                .font(.Typography.caption2Medium)
            
            Text("-----")
            Text("Lorem ipsum dolor")
                .font(.system(size: 36))
        }
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
