//
//  MenuListView.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct MenuListView: View {
    var body: some View {
        ForEach(DataModel.menus) { menu in
            MenuItemView(menu: menu)
                .padding(.vertical, 8)
        }
    }
}
