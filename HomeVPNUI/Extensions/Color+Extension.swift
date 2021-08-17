//
//  Color+Extension.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

extension Color {
    static let appPrimary = Color(red: 84/255, green: 31/255, blue: 221/255)
    static let dropDown = Color(red: 28/255, green: 24/255, blue: 197/255)
    static let progressBackground = Color(red: 149/255, green: 112/255, blue: 250/255)
    static let progress = Color(red: 252/255, green: 229/255, blue: 96/255)
    static let darkPurple = Color(red: 169/255, green: 41/255, blue: 246/255)
    static let viewTop = Color(red: 187/255, green: 68/255, blue: 251/255)
    static let viewBottom = Color(red: 104/255, green: 36/255, blue: 242/255)
    static let stopColor = Color(red: 250/255, green: 140/255, blue: 82/255)
    static let progressLinear = LinearGradient(gradient: Gradient(colors: [Color.progress,
                                                                           Color.progress.opacity(0.01)]),
                                               startPoint: .leading, endPoint: .trailing)
    static let progressBackgroundLinear = LinearGradient(gradient: Gradient(colors: [Color.progressBackground,
                                                                                     Color.progressBackground.opacity(0.01)]),
                                                         startPoint: .top, endPoint: .bottom)
    static let sideBackground = LinearGradient(gradient: Gradient(colors: [Color.viewTop, Color.viewBottom]),
                                               startPoint: .top, endPoint: .bottom)
}
