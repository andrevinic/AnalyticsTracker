//
//  EventModel.swift
//  AnalyticsSDK
//
//  Created by André Nogueira on 1/27/19.
//  Copyright © 2019 André Nogueira. All rights reserved.
//

import Foundation

struct EventModel{
    var name: String
    var parameters: Dictionary<String, String>
    
    init(name: String, parameters: Dictionary<String, String>) {
        self.name = name
        self.parameters = parameters
    }
}
