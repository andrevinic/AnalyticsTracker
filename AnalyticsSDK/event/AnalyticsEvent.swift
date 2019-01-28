//
//  Event.swift
//  AnalyticsSDK
//
//  Created by André Nogueira on 1/18/19.
//  Copyright © 2019 André Nogueira. All rights reserved.
//

import Foundation

enum AnalyticsEvent {
    case loginScreenViewed
    case loginAttempted
    case loginFailed(reason: String)
    case loginSucceeded
}

extension AnalyticsEvent {
    var name: String {
        switch self {
        case .loginScreenViewed, .loginAttempted,
             .loginSucceeded:
            return String(describing: self)
        case .loginFailed:
            return "loginFailed"
        }
    }
}

extension AnalyticsEvent {
    var metadata: [String : String] {
        switch self {
        case .loginScreenViewed, .loginAttempted,
             .loginSucceeded:
            return [:]
        case .loginFailed(let reason):
            return ["reason" : String(describing: reason)]
            
        }
    }
}

