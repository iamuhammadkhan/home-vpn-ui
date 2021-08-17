//
//  PremiumView.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct PremiumView: View {
    var fillRect = true
    
    var body: some View {
        ZStack {
            if fillRect {
                RoundedRectangle(cornerRadius: 20.0)
                    .fill(Color.darkPurple)
                    .frame(width: 135, height: 40)
            } else {
                RoundedRectangle(cornerRadius: 20.0)
                    .stroke(Color.darkPurple)
                    .frame(width: 135, height: 40)
            }
                
            HStack {
                Image(systemName: "flame.fill")
                Text("GO PREMIUM")
                    .font(.system(size: 12, weight: .regular))
            }
        }
    }
}
