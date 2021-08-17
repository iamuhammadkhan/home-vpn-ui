//
//  EmitterView.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct EmitterView: UIViewRepresentable {
    
    let width: CGFloat
    let height: CGFloat
    
    func makeUIView(context: Context) -> some UIView {
        let size = CGSize(width: width, height: height)
        let host = UIView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
            
        let emitterLayer = CAEmitterLayer()
        emitterLayer.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
            
        host.layer.addSublayer(emitterLayer)
        host.layer.masksToBounds = true
            
        emitterLayer.emitterShape = .circle
        emitterLayer.emitterPosition = CGPoint(x: size.width/2, y: size.height/2)
        emitterLayer.emitterSize = size
            
        let emitterCell = EmitterCell().content(.circle(20))
        emitterCell.color = UIColor.white.cgColor
        emitterCell.birthRate = 25
        emitterCell.lifetime = 4.0
        emitterCell.scale = 0.01
        emitterCell.alphaRange = 0.1
        emitterCell.alphaSpeed = 0.3
            
        emitterLayer.emitterCells = [emitterCell]
        return host
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) { }
}
