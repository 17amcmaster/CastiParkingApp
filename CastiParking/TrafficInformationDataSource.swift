//
//  TrafficInformationDataSource.swift
//  CastiParking
//
//  Created by Katie Mishra on 3/30/17.
//  Copyright © 2017 CS3. All rights reserved.
//

import Foundation

class TrafficInformationDataSource: NSObject {
    fileprivate(set) var trafficInformation: [TrafficInformation]
    
    init(trafficInformation: [TrafficInformation]) {
        self.trafficInformation = trafficInformation
    }
    
    func set(trafficInformation: [TrafficInformation]) {
        self.trafficInformation = trafficInformation
    }
    
    func add(trafficInformation: TrafficInformation) {
        self.trafficInformation.append(trafficInformation)
    }
    
    func get() -> [TrafficInformation] {
        return self.trafficInformation
    }
    
    func count() -> Int {
        return trafficInformation.count
    }
}

