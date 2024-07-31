//
//  CardView.swift
//  Hike
//
//  Created by Sahil on 29/07/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                        .foregroundStyle(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                        Spacer()
                        Button {
                            print("The button was pressed")
                        } label: {
                            CustomButtonView()
                        }
                        
                    }
                    Text("Fun and enjoyable activity for friends and family")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.customGrayMedium)
                        .italic()
                }
                .padding(.horizontal, 30)
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [
                                Color("ColorIndigoMedium"), Color("ColorSalmonLight")], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                Button {
                    print("The button was pressed.")
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .padding(.vertical)
                .padding(.horizontal, 30)
                .background(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                .cornerRadius(40)
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
