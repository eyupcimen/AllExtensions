//
//  UITextField+Extension.swift
//  instapeek
//
//  Created by eyup cimen on 28.11.2018.
//  Copyright © 2018 Hüseyin Vural. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    func leftPadding(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
