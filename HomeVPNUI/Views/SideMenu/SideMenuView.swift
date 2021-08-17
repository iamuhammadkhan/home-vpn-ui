//
//  SideMenuView.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct SideMenuView: View {
    
    @State var startAnimation = false
    @Binding var showSideMenu: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.black.opacity(0.1))
                .ignoresSafeArea() // so other element behind side meue is not tappable
                
            // two rotated rectangle
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.sideBackground)
                .rotationEffect(startAnimation ? .degrees(15) : .zero, anchor: .bottomTrailing)
                .offset(x: startAnimation ? -UIScreen.screenWidth/2 : -UIScreen.screenWidth, y: 20)
                .scaleEffect(0.85)
                
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.sideBackground)
                .rotationEffect(startAnimation ? .degrees(10) : .zero, anchor: .bottomTrailing)
                .offset(x: startAnimation ? -UIScreen.screenWidth/2 : -UIScreen.screenWidth, y: 20)
                .scaleEffect(0.95)
                .shadow(color: .black, radius: 50)
                
            VStack(alignment: .leading) {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            startAnimation.toggle()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                self.showSideMenu = false
                            }
                        }
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 20, weight: .bold))
                            .padding()
                    })
                }
                .offset(x: -UIScreen.screenWidth/4)
                
                // user view
                UserView()
                Spacer()
                    
                // menus list
                MenuListView()
                Spacer()
                    
                // go premium view
                PremiumView(fillRect: false)
                Spacer(minLength: 180)
            }
            .padding(.horizontal)
            .offset(x: startAnimation ? 0.0 : -UIScreen.screenWidth)
            .animation(.easeIn(duration: 0.3))
        }
        .onAppear {
            withAnimation { startAnimation.toggle() }
        }
    }
}
