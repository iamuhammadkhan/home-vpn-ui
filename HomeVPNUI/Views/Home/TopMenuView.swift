//
//  TopMenuView.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct TopMenuView: View {
    
    @Binding var showSideMenu: Bool
    
    var body: some View {
        HStack {
            Button(action: {
                showSideMenu = true //show side menu
            }, label: {
                VStack {
                    HStack {
                        Circle().frame(width: 6, height: 6)
                        Circle().frame(width: 6, height: 6)
                    }
                    HStack {
                        Circle().frame(width: 6, height: 6)
                        Circle().frame(width: 6, height: 6)
                    }
                }.padding()
            })
            Text("HOME").font(.system(size: 18, weight: .black))
            Text("VPN").font(.system(size: 18, weight: .regular))
            
            Spacer()
            PremiumView()
        }
    }
}
