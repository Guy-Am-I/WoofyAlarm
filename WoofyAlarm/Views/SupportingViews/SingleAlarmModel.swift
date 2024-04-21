//
//  SingleAlarmModel.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import Foundation
import SwiftData

@Model
final class SingleAlarmModel {
    //MARK: how to best add alarms for future?
    // i.e. how far in advance to create the alarm
    var alarmTime: Date
    
    //TODO: add following initializers:
    // - only time for current day
    init(time: Date) {
        self.alarmTime = time
    }
    
}

