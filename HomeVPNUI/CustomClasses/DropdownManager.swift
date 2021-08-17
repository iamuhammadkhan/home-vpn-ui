//
//  DropdownManager.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

class DropdownManager: ObservableObject {
    
    @Published var regions = DataModel.regions
    @Published var expanded = false
    var selectedIndex = 0
    
    func expandCollapseView() {
        expanded.toggle()
    }
        
    func selectItem(region: RegionModel) {
        if let index = regions.firstIndex(where: { $0.id == region.id }) {
            expandCollapseView()
            selectedIndex = index
        }
    }
}
