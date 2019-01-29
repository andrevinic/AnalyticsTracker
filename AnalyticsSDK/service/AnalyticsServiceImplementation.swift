//
//  CloudKitAnalyticsService.swift
//  AnalyticsSDK
//
//  Created by André Nogueira on 1/23/19.
//  Copyright © 2019 André Nogueira. All rights reserved.
//

class AnalyticsServiceImplementation: AnalyticsService {

    var timer:Timer? = nil
    var eventList:[EventModel] = []
    
    @objc func sendAnalyticsEvent(named name: String, withParameters parameters: Dictionary<String, String>){

        let eventModel = EventModel(name: name, parameters: parameters)
        eventList.append(eventModel)
        
        if eventList.count == 3 {
            manageRequest()
        }
        
        print("time")
        self.schedule()
    }
    
    @objc func manageRequest(){
        self.clear()
        self.record()
        
        self.eventList = []
    }
    
    func clear(){
        self.timer?.invalidate()
    }
    
    func schedule(){
        
        self.timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(self.manageRequest), userInfo: nil, repeats: true)
    }
    
    func record(){
        AnalyticsDataAccessObject.shared.recordObject(eventModelList: self.eventList)
    }
}

