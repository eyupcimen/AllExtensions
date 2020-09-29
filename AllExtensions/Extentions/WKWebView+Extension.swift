//
//  Extensions.swift
//  eniyitahmin.com
//
//  Created by Kenan Atmaca on 21.05.2018.
//  Copyright © 2018 Gürkan BULUT. All rights reserved.
//

import UIKit
import WebKit
  
extension WKWebView{
    func clearAllCookies(){
        if #available(iOS 11.0, *) {
            let dataStore = WKWebsiteDataStore.default()
            WKWebsiteDataStore.default().fetchDataRecords(ofTypes: WKWebsiteDataStore.allWebsiteDataTypes()) { records in
                records.forEach { record in
                    WKWebsiteDataStore.default().removeData(ofTypes: record.dataTypes, for: [record], completionHandler: {})
                    dataStore.httpCookieStore.getAllCookies { (cookies) in}
                }
            }
        } else {
            //print("WK WW not suported.")
        }
    }
}

