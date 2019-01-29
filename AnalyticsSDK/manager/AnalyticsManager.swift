//
//  AnalyticsManager.swift
//  AnalyticsSDK
//
//  Created by André Nogueira on 1/23/19.
//  Copyright © 2019 André Nogueira. All rights reserved.
//

class AnalyticsManager: NSObject {

    private let engine: AnalyticsService
    init(engine: AnalyticsService) {
        self.engine = engine
    }
    func log(_ event: AnalyticsEvent) {
        engine.sendAnalyticsEvent(named: event.name, withParameters: event.metadata)
    }

}
