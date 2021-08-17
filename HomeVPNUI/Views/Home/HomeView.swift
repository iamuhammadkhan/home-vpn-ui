//
//  HomeView.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct HomeView: View {
    
    @State var showSideMenu = false
    @StateObject var speedSimulator = SpeedSimultor()
    
    var body: some View {
        ZStack {
            Color.appPrimary.ignoresSafeArea()
                    
            VStack {
                TopMenuView(showSideMenu: $showSideMenu) // top menu view
                SpeedTextView(speedSimulator: speedSimulator) // speed text view
                
                Spacer()
                ProgressView(speedSimulator: speedSimulator) // Progress view
                Spacer()
                
                Button(action: { // start stop button view
                    speedSimulator.startSpeedTest() // start speed simulation
                }, label: {
                    StartStopButtonView(speedSimulator: speedSimulator)
                })
                Spacer()
            }
            .foregroundColor(.white)
            .padding(.horizontal)
                    
            VStack {
                Spacer()
                DropdownView().padding(.horizontal, 30) // drop down view
            }
                    
            if showSideMenu {
                SideMenuView(showSideMenu: $showSideMenu).foregroundColor(.white)
            }
        }
    }
}
