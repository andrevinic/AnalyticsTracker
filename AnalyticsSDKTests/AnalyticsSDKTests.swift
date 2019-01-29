//
//  AnalyticsSDKTests.swift
//  AnalyticsSDKTests
//
//  Created by André Nogueira on 1/18/19.
//  Copyright © 2019 André Nogueira. All rights reserved.
//

import XCTest
import CloudKit

@testable import AnalyticsSDK

class AnalyticsSDKTests: XCTestCase {

    var analyticsManager: AnalyticsManager?
    
    override func setUp() {
        let analyticsCloudService = AnalyticsServiceImplementation()
        self.analyticsManager = AnalyticsManager(engine: analyticsCloudService)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        self.analyticsManager?.log(.loginFailed(reason: "test"))

    }

}
