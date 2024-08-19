//
//  FontExtension.swift
//  cheappie
//
//  Created by Warunya on 15/8/2567 BE.
//

import SwiftUI

struct TokenTypography {
    
    private enum FontFamily: String {
        case 
        Bold = "PublicSans-Bold",
        BoldItalic = "PublicSans-BoldItalic",
        SemiBold = "PublicSans-SemiBold",
        SemiBoldItalic = "PublicSans-SemiBoldItalic",
        Medium = "PublicSans-Medium",
        Regular = "PublicSans-Regular",
        Italic = "PublicSans-Italic"
    }
    
    private enum FontFamilyToken: String {
        case Bold, BoldItalic, SemiBold, SemiBoldItalic, Medium, Regular, Italic
        
        func getValue() -> String {
            switch self {
            case .Bold:
                return FontFamily.Bold.rawValue
            case .BoldItalic:
                return FontFamily.BoldItalic.rawValue
            case .SemiBold:
                return FontFamily.SemiBold.rawValue
            case .SemiBoldItalic:
                return FontFamily.SemiBoldItalic.rawValue
            case .Medium:
                return FontFamily.Medium.rawValue
            case .Regular:
                return FontFamily.Regular.rawValue
            case .Italic:
                return FontFamily.Italic.rawValue
            }
        }
    }
    
    private enum FontSize: CGFloat {
        case
        thirtySix = 36,
        twentyEight = 28,
        twentyFour = 24,
        twenty = 20,
        sixteen = 16,
        fifteen = 15,
        twelve = 12,
        ten = 10
    }
    
    
    private enum FontSizeToken: CGFloat {
        case largeTitle, title1, title2, title3, body, headline, subheadline, caption1, caption2
        
        func getValue() -> CGFloat {
            switch self {
            case .largeTitle:
                return FontSize.thirtySix.rawValue
            case .title1:
                return FontSize.twentyEight.rawValue
            case .title2:
                return FontSize.twentyFour.rawValue
            case .title3:
                return FontSize.twenty.rawValue
            case .body:
                return FontSize.sixteen.rawValue
            case .headline:
                return FontSize.sixteen.rawValue
            case .subheadline:
                return FontSize.fifteen.rawValue
            case .caption1:
                return FontSize.twelve.rawValue
            case .caption2:
                return FontSize.ten.rawValue
            }
        }
    }
    
    
    let largeTitleRegular, largeTitleBold: Font!
    let title1Bold, title1Regular: Font!
    let title2Bold, title2Regular: Font!
    let title3Bold, title3Regular: Font!
    let headlineSemibold, headlineSemiboldItalic: Font!
    let subheadlineBold, subheadlineItalic: Font!
    let bodyRegular, bodyBold, bodyItalic, bodyBoldItalic: Font!
    let caption1Regular, caption1Bold, caption1Italic, caption1BoldItalic: Font!
    let caption2Medium: Font!
    
    init() {
        
//        large title
        self.largeTitleRegular = Font.custom(FontFamilyToken.Regular.getValue(), size: FontSizeToken.largeTitle.getValue(), relativeTo: .largeTitle)
        self.largeTitleBold = Font.custom(FontFamilyToken.Bold.getValue(), size: FontSizeToken.largeTitle.getValue())
        
//        title 1
        self.title1Regular = Font.custom(FontFamilyToken.Regular.getValue(), size: FontSizeToken.title1.getValue())
        self.title1Bold = Font.custom(FontFamilyToken.Bold.getValue(), size: FontSizeToken.title1.getValue())
        
//        title 2
        self.title2Regular = Font.custom(FontFamilyToken.Regular.getValue(), size: FontSizeToken.title2.getValue())
        self.title2Bold = Font.custom(FontFamilyToken.Bold.getValue(), size: FontSizeToken.title2.getValue())
        
//        title 3
        self.title3Regular = Font.custom(FontFamilyToken.Regular.getValue(), size: FontSizeToken.title3.getValue())
        self.title3Bold = Font.custom(FontFamilyToken.Bold.getValue(), size: FontSizeToken.title3.getValue())
        
//        headline
        self.headlineSemibold = Font.custom(FontFamilyToken.SemiBold.getValue(), size: FontSizeToken.headline.getValue())
        self.headlineSemiboldItalic = Font.custom(FontFamilyToken.SemiBoldItalic.getValue(), size: FontSizeToken.headline.getValue())
        
//        subheadline
        self.subheadlineBold = Font.custom(FontFamilyToken.Bold.getValue(), size: FontSizeToken.subheadline.getValue())
        self.subheadlineItalic = Font.custom(FontFamilyToken.Italic.getValue(), size: FontSizeToken.subheadline.getValue())
        
//        body
        self.bodyBold = Font.custom(FontFamilyToken.Bold.getValue(), size: FontSizeToken.body.getValue())
        self.bodyRegular = Font.custom(FontFamilyToken.Regular.getValue(), size: FontSizeToken.body.getValue())
        self.bodyItalic = Font.custom(FontFamilyToken.Italic.getValue(), size: FontSizeToken.body.getValue())
        self.bodyBoldItalic = Font.custom(FontFamilyToken.BoldItalic.getValue(), size: FontSizeToken.body.getValue())
        
//        caption 1
        self.caption1Regular = Font.custom(FontFamilyToken.Regular.getValue(), size: FontSizeToken.caption1.getValue())
        self.caption1Bold = Font.custom(FontFamilyToken.Bold.getValue(), size: FontSizeToken.caption1.getValue())
        self.caption1Italic = Font.custom(FontFamilyToken.Italic.getValue(), size: FontSizeToken.caption1.getValue())
        self.caption1BoldItalic = Font.custom(FontFamilyToken.BoldItalic.getValue(), size: FontSizeToken.caption1.getValue())
        
//        caption 2
        self.caption2Medium = Font.custom(FontFamilyToken.Medium.getValue(), size: FontSizeToken.caption2.getValue())
    }
}
