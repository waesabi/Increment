//
//  ContentView.swift
//  Increment
//
//  Created by sanket kumar on 16/05/21.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Spacer()
                    .frame(maxHeight: proxy.size.height * 0.25)
                Text("Increment")
                    .font(.system(size: 64, weight: .medium))
                    .foregroundColor(.white)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack(spacing: 16) {
                        Spacer()
                        Image(systemName: "plus.circle")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(.white)
                        Text("Create a challenge")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(.white)
                        Spacer()
                    }
                })
                .padding(.horizontal, 16)
                .buttonStyle(PrimaryButtonStyle())
                Spacer()
                    .frame(height: 16)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("pullups")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(Color.black.opacity(0.4))
                    
            ).edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView().previewDevice("iPhone 8")
    }
}
