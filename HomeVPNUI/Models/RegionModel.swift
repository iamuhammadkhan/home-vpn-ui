//
//  RegionModel.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct RegionModel: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let strength: Int
}
