//
//  RegionItemView.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct RegionItemView: View {
    
    let region: RegionModel
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white.opacity(0.001)) // so that whole item tapable
                .frame(height: 60)
                
            HStack(spacing: 16) {
                Text(region.imageName)
                    .font(.system(size: 55))
                    .fixedSize()
                    .frame(width: 30, height: 30)
                    .cornerRadius(15)
                    
                Text(region.name)
                    .bold()
                    .foregroundColor(.white)
                
                Spacer()
                    
                ZStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        ForEach(Array(stride(from: 0, to: 5, by: 1)), id: \.self) { _ in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 6, height: 6)
                        }
                    }
                        
                    HStack(spacing: 2) {
                        ForEach(Array(stride(from: 0, to: region.strength, by: 1)), id: \.self) { _ in
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 6, height: 6)
                        }
                    }
                }
            }.padding(.horizontal)
        }
    }
}
