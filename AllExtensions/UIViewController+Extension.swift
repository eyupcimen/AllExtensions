//
//  UIViewController+Extension.swift
//  AllExtensions
//
//  Created by eyup cimen on 12.03.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import Foundation
import UIKit

private var dataAssocKey = 0
extension UIViewController {
    
    var data:AnyObject? {
        get {
            return objc_getAssociatedObject(self, &dataAssocKey) as AnyObject?
        }
        set {
            objc_setAssociatedObject(self, &dataAssocKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        }
    }
}
