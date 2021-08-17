//
//  UserView.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10).frame(width: 70, height: 70)
            
            Text("Hello,")
            Text("Muhammad Khan").bold()
        }
    }
}
