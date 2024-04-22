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
            Circle()
                .stroke(lineWidth: 20)
                .fill(Asset.buttonPrimary.color)
            //TODO: Use custom picker to apply better styling
            DatePicker("", selection: $alarmTime, displayedComponents: .hourAndMinute)
                .datePickerStyle(.wheel)
                .labelsHidden()
                .colorMultiply(Asset.textPrimary.color)
                .scaleEffect(CGSize(width: 1.2, height: 1.2))
        }
        .padding(.horizontal)
        .frame(maxWidth: 300, maxHeight: 300)
    }
}

#Preview {
    AlarmWheelView(alarmTime: .constant(Date()))
}
