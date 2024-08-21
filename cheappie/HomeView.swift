//
//  Home.swift
//  cheappie
//
//  Created by Warunya on 20/8/2567 BE.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

struct TextFieldCustom: TextFieldStyle {
    var focused: Bool
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .keyboardType(.decimalPad)
            .font(.Typography.title2Regular)
            .multilineTextAlignment(.center)
            .padding(12)
            .clipShape(RoundedRectangle(cornerRadius: 4))
            .overlay {
                RoundedRectangle(cornerRadius: 4)
                    .stroke(focused ? .black700 : .black400)
            }
    }
}

struct BadgeCustom: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: 30, maxHeight: 30)
            .padding(12)
            .font(.Typography.title2Regular)
            .foregroundStyle(.white)
            .background(.black800)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

struct HomeView: View {
    
    @State private var sizeA: Float = 0
    @State private var costA: Float = 0
    
    @State private var sizeB: Float = 0
    @State private var costB: Float = 0
    
    @FocusState private var isFocused: Bool
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.zeroSymbol = ""
        return formatter
    }()
    
    
    var body: some View {
        ZStack {
            VStack {
                
                Spacer()
                
    //            header
                HStack {
                    Text("Let's Compare!")
                        .font(.Typography.largeTitleRegular)
                    
                    Spacer()
                    
                    Image(systemName: "trash")
                        .font(.system(size: 26))
                }
                
                Spacer()
                    .frame(height: 32)
                
    //            row A
                HStack {
                    Text("A")
                        .modifier(BadgeCustom())
                    
                    TextField("size", value: $sizeA, formatter: formatter)
                        .textFieldStyle(TextFieldCustom(focused: isFocused))
                        .focused($isFocused)
                    
                    
                    TextField("cost", value: $costA, formatter: formatter)
                        .textFieldStyle(TextFieldCustom(focused: isFocused))
                        .focused($isFocused)
                }
                
    //            row B
                HStack {
                    Text("B")
                        .modifier(BadgeCustom())
                    
                    TextField("size", value: $sizeB, formatter: formatter)
                        .textFieldStyle(TextFieldCustom(focused: isFocused))
                        .focused($isFocused)
                    
                    
                    TextField("cost", value: $costB, formatter: formatter)
                        .textFieldStyle(TextFieldCustom(focused: isFocused))
                        .focused($isFocused)
                }
                
                Text("Size A : \(sizeA, specifier: "%.2f")")
                Text("Cost A : \(costA, specifier: "%.2f")")
                Text("Result : \(costA/sizeA, specifier: "%.2f")")
                
                Text("Size B : \(sizeB, specifier: "%.2f")")
                Text("Cost B : \(costB, specifier: "%.2f")")
                Text("Result : \(costB/sizeB, specifier: "%.2f")")
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .onTapGesture {
            hideKeyboard()
        }
    }
    
}

#Preview {
    HomeView()
}
