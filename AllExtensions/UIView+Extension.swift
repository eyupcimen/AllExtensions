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
