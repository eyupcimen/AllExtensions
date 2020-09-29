//
//  String+Extension.swift
//  instapeek
//
//  Created by eyup cimen on 28.11.2018.
//  Copyright © 2018 Hüseyin Vural. All rights reserved.
//

import Foundation
import UIKit

extension String {
    func getTextSize(font: UIFont) -> CGRect {
        let size = CGSize(width: 270, height: 1000)
        let option = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
        return NSString(string: self).boundingRect(with: size, options: option, attributes: [NSAttributedStringKey.font: font], context: nil)
    }
    
    subscript(_ range: CountableRange<Int>) -> String {
        let idx1 = index(startIndex, offsetBy: max(0, range.lowerBound))
        let idx2 = index(startIndex, offsetBy: min(self.count, range.upperBound))
        return String(self[idx1..<idx2])
    }
    
    func replace(target: String, withString: String) -> String{
        return self.replacingOccurrences(of: target, with: withString, options: NSString.CompareOptions.literal, range: nil)
    }
}
