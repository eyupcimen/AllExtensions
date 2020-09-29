//
//  UIView+Extension.swift
//  AllExtensions
//
//  Created by eyup cimen on 12.03.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    open class func create(with nibName:String) -> UIView {
        return Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)?.first as! UIView
    }
}

let firstColor      = UIColor.red.cgColor
let secondColor     = UIColor.white.cgColor
let clearColor      = UIColor.clear.cgColor

extension UIView {
        
    static func makeGradientView(_ rect: CGRect) -> UIView {
        
        let firstColors     = [firstColor, secondColor]
        let secondColors    = [secondColor, firstColor]

        let firstPoints   = [CGPoint(x: 0.0, y: 0.0), CGPoint(x: 1.0, y: 1.0)]
        let secondPoints  = [CGPoint(x: 0.0, y: 1.0), CGPoint(x: 1.0, y: 0.0)]

        let colorsArray = [firstColors, secondColors]
        let pointsArray = [firstPoints, secondPoints]
        
        let gradientView = UIView(frame: rect)
        
        for i in 0 ..< colorsArray.count {
            let colors = colorsArray[i]
            let points = pointsArray[i]
            let gradientLayer  = CAGradientLayer.makeGradient(colors,
                                                              rect: rect,
                                                              points: points)
            gradientView.layer.insertSublayer(gradientLayer, at: UInt32(i))
        }
        
        return gradientView
    }
}

extension UIView {
        
    func addShadow(){
        self.layer.cornerRadius = 3.0
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.layer.shadowRadius = 12.0
        self.layer.shadowOpacity = 0.4
    }
}


extension UIView {
    func applyGradient(colours: [UIColor]) -> Void {
        self.applyGradient(colours: colours, locations: nil)
    }
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]? = [0.0, 1.0]) -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.withAlphaComponent(0.90).cgColor }
        gradient.locations = locations
        gradient.zPosition = -1
        self.layer.addSublayer(gradient)
    }
    
    func addGradient(_ c1: UIColor,_ c2: UIColor) {
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: -statusBarHeight, width: self.bounds.width, height: self.bounds.height + statusBarHeight)
        gradientLayer.colors = [c1.cgColor, c2.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        gradientLayer.zPosition = -1
        self.layer.addSublayer(gradientLayer)
    }
    
    func setShadowWithColor(color: UIColor, opacity: Float, offset: CGSize = .zero, radius: CGFloat, cornerRadius: CGFloat,shouldRasterize:Bool=false) {
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowRadius = radius
        self.layer.shadowOffset = offset
    }
}
