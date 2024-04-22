//
//  AlarmWheelView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-21.
//

import SwiftUI

struct AlarmWheelView: View {
    @Binding var alarmTime: Date
    var body: some View {
        ZStack {
            Asset.backgroundPrimary.color
            VStack {
                DatePicker("", selection: $alarmTime, displayedComponents: .hourAndMinute)
                    .datePickerStyle(.wheel)
                    .labelsHidden()
            }
            .border(.red)
        }
    }
}

#Preview {
    AlarmWheelView(alarmTime: .constant(Date()))
}
