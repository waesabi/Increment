//
//  PrimaryButtonStyle.swift
//  Increment
//
//  Created by sanket kumar on 22/05/21.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    var fillColor: Color = .darkPrimaryButton
    
    func makeBody(configuration: Configuration) -> some View {
        return PrimaryButton(configuration: configuration, fillColor: fillColor)
    }
    
    struct PrimaryButton: View {
        var configuration: Configuration
        var fillColor: Color
        var body: some View {
            return configuration
                .label
                .padding(16)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(fillColor)
                )
        }
    }
}

struct PrimaryButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("Create a challenge")
        })
        .buttonStyle(PrimaryButtonStyle())
            
    }
}
