//
//  AnalyticsService.swift
//  AnalyticsSDK
//
//  Created by André Nogueira on 1/18/19.
//  Copyright © 2019 André Nogueira. All rights reserved.
//

import Foundation
import CloudKit
protocol AnalyticsService{
    func sendAnalyticsEvent(named name: String)
}
