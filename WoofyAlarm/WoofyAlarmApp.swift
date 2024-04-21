//
//  WoofyAlarmApp.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-19.
//

import SwiftUI
import SwiftData

@main
struct WoofyAlarmApp: App {
    var body: some Scene {
        WindowGroup {
            MainAlarmView()
        }
        .modelContainer(for: SingleAlarmModel.self)
    }
}
