//
//  DataModel.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct DataModel {
    static let regions = [ RegionModel(name: "Singapore", imageName: "🇸🇬", strength: 4),
                           RegionModel(name: "USA", imageName: "🇺🇸", strength: 3),
                           RegionModel(name: "Australia", imageName: "🇦🇺", strength: 3),
                           RegionModel(name: "Canada", imageName: "🇨🇦", strength: 2),
                           RegionModel(name: "France", imageName: "🇫🇷", strength: 2) ]
    
    static let menus = [ MenuItem(name: "Apps using VPN", imageName: "icloud.and.arrow.down"),
                         MenuItem(name: "Rate us", imageName: "star"),
                         MenuItem(name: "Support", imageName: "questionmark.circle"),
                         MenuItem(name: "Settings", imageName: "gearshape") ]
}
