//
//  AddEditAlarmView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-21.
//

import SwiftUI

struct AddEditAlarmView: View {
    //TODO: change to optional or indicator to either create / edit alarm
    @Bindable var alarm: AlarmModel = AlarmModel.DefaultAlarm()
    var body: some View {
        ZStack {
            Asset.backgroundPrimary.color
            VStack {
                AlarmWheelView(alarmTime: $alarm.alarmTime)
                AlarmOptionsView()
                    .frame(maxHeight: 300)
            }
        }
    }
}

#Preview {
    AddEditAlarmView()
}
