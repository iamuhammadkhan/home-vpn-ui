//
//  EmitterCell.swift
//  HomeVPNUI
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

class EmitterCell: CAEmitterCell {
    override init() {
        super.init()
    }
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
        
    public enum Content {
        case image(UIImage)
        case circle(CGFloat)
    }
        
    dynamic func content(_ content: Content) -> Self {
        self.contents = content.image.cgImage
        return self
    }
}

fileprivate extension EmitterCell.Content {
    var image: UIImage {
        switch self {
        case let .image(image):
            return image
        case let .circle(radius):
            let size = CGSize(width: radius * 2, height: radius * 2)
            return UIGraphicsImageRenderer(size: size).image { context in
                context.cgContext.setFillColor(UIColor.white.cgColor)
                context.cgContext.addPath(CGPath(ellipseIn: CGRect(origin: .zero, size: size), transform: nil))
                context.cgContext.fillPath()
            }
        }
    }
}
