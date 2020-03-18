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
