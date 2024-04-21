//
//  AlarmModel.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import Foundation
import SwiftData

@Model
final class AlarmModel {
    //MARK: how to best add alarms for future?
    // i.e. how far in advance to create the alarm
    var alarmTime: Date
    var title: String
    var isActive: Bool
    var isSnooze: Bool
    var sound: String //TODO: define sounds
    var daysActive: [String] = [Date.currentDayString()] //Default to today
    
    //TODO: add following initializers:
    // - only time for current day
    init(alarmTime: Date, title: String, isActive: Bool, isSnooze: Bool, sound: String, daysActive: [String]) {
        self.alarmTime = alarmTime
        self.title = title
        self.isActive = isActive
        self.isSnooze = isSnooze
        self.sound = sound
        self.daysActive = daysActive
    }
    
    static func DefaultAlarm () -> AlarmModel {
        AlarmModel(alarmTime: Date.distantFuture, title: "Testing Alarm", isActive: true, isSnooze: true, sound: "TODO", daysActive: ["Sunday", "Monday"])
    }
    
}

