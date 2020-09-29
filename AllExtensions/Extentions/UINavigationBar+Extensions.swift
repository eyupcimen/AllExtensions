//
//  UINavigationBar+Extensions.swift
//  easypeek
//
//  Created by Hüseyin Vural on 22.06.2018.
//  Copyright © 2018 Hüseyin Vural. All rights reserved.
//

import UIKit

extension UINavigationBar {
    func addBgGradient( colors : [UIColor]) {
        var frame: CGRect = self.bounds
        frame.size.height += 20
        setBackgroundImage(UINavigationBar.gradient(size: frame.size, colors: colors), for: .default)
    }
    
    private static func gradient(size : CGSize, colors : [UIColor]) -> UIImage? {
        let cgcolors = colors.map { $0.cgColor }
        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        defer { UIGraphicsEndImageContext() }
        var locations : [CGFloat] = [0.0, 1.0]
        guard let gradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: cgcolors as NSArray as CFArray, locations: &locations) else { return nil }
        context.drawLinearGradient(gradient, start: CGPoint(x: 0.0, y: 0.0), end: CGPoint(x: size.width, y: 0.0), options: [])
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        return image
    }
    
    func clearNavigationBar() {
        self.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.shadowImage = UIImage()
        self.isTranslucent = true
        self.backgroundColor = .clear
    }
    
    func setGrayNavbar() {
        self.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.shadowImage = UIImage()
        self.isTranslucent = true
        self.backgroundColor = UIColor.paleGrey58
    }
}
