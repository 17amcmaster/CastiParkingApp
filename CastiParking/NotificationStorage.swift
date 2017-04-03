//
//  AccountStorage.swift
//  Straight Outta Casti
//
//  Created by Vanessa Woo on 3/2/17.
//  Copyright © 2017 Attendance App. All rights reserved.
//

import Foundation

class NotificationStorage {
    fileprivate let documentsDirectoryURL = FileManager.default
        .urls(for: .documentDirectory, in: .userDomainMask)
        .first!
    
    fileprivate var trafficInformationFileURL: URL {
        return documentsDirectoryURL
            .appendingPathComponent("TrafficInformation")
            .appendingPathExtension("plist")
    }
    
    func save(_ trafficInformation: [TrafficInformation]) {
        let trafficInformationPlist = trafficInformation.map { $0.plistRepresentation } as NSArray
        trafficInformationPlist.write(to: trafficInformationFileURL, atomically: true)
    }
    
    func fetchTrafficInformation() -> [TrafficInformation] {
        guard let trafficInformationPlists = NSArray(contentsOf: trafficInformationFileURL) as? [[String: AnyObject]] else {
            return []
        }
        return trafficInformationPlists.map(TrafficInformation.init(plist:))
    }
}
