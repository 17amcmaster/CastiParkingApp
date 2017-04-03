//
//  StateController.swift
//  Straight Outta Casti
//
//  Created by Vanessa Woo on 3/6/17.
//  Copyright © 2017 Attendance App. All rights reserved.
//

import Foundation

class StateController {
    fileprivate let trafficInformationStorage: NotificationStorage
    fileprivate(set) var dataSource: TrafficInformationDataSource
    
    init(trafficInformationStorage: NotificationStorage) {
        self.trafficInformationStorage = trafficInformationStorage
        let trafficInformations = trafficInformationStorage.fetchTrafficInformation()
        self.dataSource = TrafficInformationDataSource(trafficInformation: trafficInformations)
    }
    
    func add(_ trafficInformation: TrafficInformation) {
        self.dataSource.add(trafficInformation: trafficInformation)
        trafficInformationStorage.save(dataSource.get())
        print("Notification \(trafficInformation)")
    }
    
    func get() -> [TrafficInformation] {
        return trafficInformationStorage.fetchTrafficInformation()
    }
    
}
