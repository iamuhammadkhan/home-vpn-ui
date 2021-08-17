//
//  StartStopButtonView.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct StartStopButtonView: View {
   
    @ObservedObject var speedSimulator: SpeedSimultor
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(speedSimulator.start ? Color.stopColor : Color.darkPurple)
                .frame(width: 110, height: 50)
                
            HStack {
                Image(systemName: "power")
                    .font(.system(size: 18, weight: .black))
                Text(speedSimulator.start ? "Stop" : "Start")
                    .font(.system(size: 18, weight: .regular))
            }
        }
    }
}
