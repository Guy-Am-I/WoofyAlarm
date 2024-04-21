//
//  AlarmModel.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import Foundation
import SwiftData

@Model
final class AlarmModel: Identifiable {
    //MARK: how to best add alarms for future?
    // i.e. how far in advance to create the alarm
    let id = UUID() //currently used for sorting, delete later?
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
        AlarmModel(alarmTime: Date.distantFuture, title: "Testing Alarm", isActive: true, isSnooze: true, sound: "TODO", daysActive: ["Sun", "Mon"])
    }
    
    static func GenDummyAlarms() -> [AlarmModel] {
        let oneHour: Double = 3600
        return [
            AlarmModel(alarmTime: Date().addingTimeInterval(oneHour), title: "Alarm 1", isActive: true, isSnooze: true, sound: "TODO", daysActive: ["Sun"]),
            AlarmModel(alarmTime: Date().addingTimeInterval(oneHour*3), title: "Alarm 2", isActive: true, isSnooze: true, sound: "TODO2", daysActive: ["Sun", "Mon"]),
            AlarmModel(alarmTime: Date().addingTimeInterval(oneHour*5), title: "Alarm 3", isActive: true, isSnooze: true, sound: "TODO3", daysActive: ["Tues"]),
            AlarmModel(alarmTime: Date().addingTimeInterval(oneHour*6), title: "Alarm 4", isActive: true, isSnooze: true, sound: "TODO4", daysActive: ["Sun", "Mon", "Wed", "Fri"]),
            AlarmModel(alarmTime: Date().addingTimeInterval(oneHour*8), title: "Alarm Everyday", isActive: true, isSnooze: true, sound: "TODO5", daysActive: ["Sun", "Mon", "Tues", "Wed", "Thur", "Fri", "Sat"]),
            AlarmModel(alarmTime: Date().addingTimeInterval(oneHour*10), title: "Alarm Weekend", isActive: true, isSnooze: true, sound: "TODO6", daysActive: ["Sat", "Sun"]),
            AlarmModel(alarmTime: Date().addingTimeInterval(oneHour*20), title: "Alarm Weekday", isActive: true, isSnooze: true, sound: "TODO7", daysActive: ["Mon", "Tues", "Wed", "Thur", "Fri"])
        ]
    }
    
}

