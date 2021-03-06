//
//  DataModel.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct DataModel {
    static let regions = [ RegionModel(name: "Singapore", imageName: "πΈπ¬", strength: 4),
                           RegionModel(name: "USA", imageName: "πΊπΈ", strength: 3),
                           RegionModel(name: "Australia", imageName: "π¦πΊ", strength: 3),
                           RegionModel(name: "Canada", imageName: "π¨π¦", strength: 2),
                           RegionModel(name: "France", imageName: "π«π·", strength: 2) ]
    
    static let menus = [ MenuItem(name: "Apps using VPN", imageName: "icloud.and.arrow.down"),
                         MenuItem(name: "Rate us", imageName: "star"),
                         MenuItem(name: "Support", imageName: "questionmark.circle"),
                         MenuItem(name: "Settings", imageName: "gearshape") ]
}
