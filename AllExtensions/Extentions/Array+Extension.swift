//
//  NSSet+Extension.swift
//  instapeek
//
//  Created by eyup cimen on 28.11.2018.
//  Copyright © 2018 Hüseyin Vural. All rights reserved.
//

import Foundation


extension Array where Element: Comparable {
    
    func containsSameElements(as other: [Element]) -> Bool {
        
        return self.count == other.count && self.sorted() == other.sorted()
    }
}
