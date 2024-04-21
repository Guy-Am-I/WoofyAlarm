//
//  AlarmItemView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import SwiftUI

struct AlarmItemView: View {
    @Bindable var alarm: AlarmModel
    
    var formattedTime: String {
        alarm.alarmTime.formatted(date: .omitted, time: .shortened)
    }
    var formattedDays: String {
        alarm.daysActive.joined(separator: ",")
    }
    
    var body: some View {
        HStack {
            Toggle(isOn: $alarm.isActive) {
                VStack(alignment: .leading) {
                    Text(formattedTime)
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    HStack {
                        Text(alarm.title)
                        Text(formattedDays)
                    }
                }
            }
            .tint(Asset.backgroundTabs.color)
            .padding()
            .background(.ultraThinMaterial)
            .background(Asset.backgroundSecondary.color.opacity(0.5))
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }
    }
}

#Preview {
    AlarmItemView(alarm: AlarmModel.DefaultAlarm())
}
