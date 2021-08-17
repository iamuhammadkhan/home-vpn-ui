//
//  SpeedTextView.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct SpeedTextView: View {
    
    @ObservedObject var speedSimulator: SpeedSimultor
    
    var body: some View {
        ZStack {
            EmitterView(width: UIScreen.screenWidth, height: 80)
                .opacity(speedSimulator.start ? 1.0 : 0.0)
                .frame(height: 80)
            VStack {
                Text(String(format: "%.2f", speedSimulator.calculatedSpeed))
                    .font(.system(size: 40, weight: .semibold))
                    .animation(.none)
                    
                Text("mb/s")
                    .font(.system(size: 16, weight: .light))
            }
        }
    }
}
