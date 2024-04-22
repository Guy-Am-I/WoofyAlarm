//
//  ExtensionDate.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import Foundation

extension Date {
    static var is12HourFormat: Bool {
        Locale.current.hourCycle == .oneToTwelve ||
        Locale.current.hourCycle == .zeroToEleven
    }
    
    var timeOfDayPercent: CGFloat? {
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: self)
        let minute = calendar.component(.minute, from: self)
        
        return CGFloat(hour) / 24 + CGFloat(minute) / (60 * 24)
    }
    // Get difference between dates in time interval
    static func -(_ lhs: Date, _ rhs: Date) -> TimeInterval {
        lhs.timeIntervalSinceReferenceDate - rhs.timeIntervalSinceReferenceDate
    }
    
    
    static func currentDayString() -> String {
        let index = Calendar.current.component(.weekday, from: Date())
        return Calendar.current.shortWeekdaySymbols[index - 1]
    }
    
}
