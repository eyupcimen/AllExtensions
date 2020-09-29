//
//  UIApplication+Extension.swift
//  instapeek
//
//  Created by eyup cimen on 28.11.2018.
//  Copyright © 2018 Hüseyin Vural. All rights reserved.
//

import Foundation
import UIKit


extension UIApplication {
    
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
    
}
