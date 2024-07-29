//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Sahil on 29/07/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK 3. - DEPTH
            
            Color("ColorGreenDark")
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK 4. - LIGHT
            
            Color("ColorGreenLight")
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            LinearGradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")], startPoint: .top, endPoint: .bottom)
                .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
