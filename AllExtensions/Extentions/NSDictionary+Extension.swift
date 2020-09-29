//
//  NSDictionary+Extension.swift
//  instapeek
//
//  Created by eyup cimen on 28.11.2018.
//  Copyright © 2018 Hüseyin Vural. All rights reserved.
//

import Foundation

func convertToDictionary(text: String) -> [String: Any]? {
    if let data = text.data(using: .utf8) {
        do {
            return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        } catch {
            //print(error.localizedDescription)
        }
    }
    return nil
}
