//
//  MenuItemView.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct MenuItemView: View {
    let menu: MenuItem
    
    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: menu.imageName)
                .fixedSize(horizontal: true, vertical: true)
                .frame(width: 20)
            Text(menu.name)
                .font(.system(size: 14, weight: .bold))
        }
    }
}
