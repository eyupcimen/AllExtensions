//
//  CAGradientLayer+Extension.swift
//  AllExtensions
//
//  Created by eyup cimen on 18.03.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import Foundation
import UIKit

extension CAGradientLayer {
    
    static func makeGradient(_ colors: [CGColor], rect: CGRect, points: [CGPoint]) -> CAGradientLayer {
        let gradient        = CAGradientLayer()
        gradient.colors     = colors
        gradient.locations  = [0.0 , 1.0]
        gradient.startPoint = points[0]
        gradient.endPoint   = points[1]
        gradient.frame      = rect

        return gradient
    }
}
