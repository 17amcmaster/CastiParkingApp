//
//  Notifications.swift
//  CastiParking
//
//  Created by Katie Mishra on 3/29/17.
//  Copyright © 2017 CS3. All rights reserved.
//

import Foundation

struct TrafficInformation {
    let message: String
}

extension TrafficInformation {
    var plistRepresentation: [String: AnyObject] {
        return [
            "Message": message as AnyObject
        ]
    }
    
    init (plist: [String: AnyObject]) {
        message = plist["Message"] as! String
    }
}
