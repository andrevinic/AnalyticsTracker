//
//  AnalyticsService.swift
//  AnalyticsSDK
//
//  Created by André Nogueira on 1/18/19.
//  Copyright © 2019 André Nogueira. All rights reserved.
//

import Foundation

protocol AnalyticsService{
    func sendAnalyticsEvent(named name: String, withParameters parameters: Dictionary<String, String>)
}
