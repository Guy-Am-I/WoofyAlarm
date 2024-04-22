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
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = Date.is12HourFormat ? "hh:mm" : "HH:mm"
        return dateFormatter.string(from: alarm.alarmTime)
    }
    
    private var amPmStr: String {
        if Date.is12HourFormat {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "a"
            return dateFormatter.string(from: alarm.alarmTime)
        }
        return ""
    }
    
    var formattedDays: String {
        alarm.daysActive.joined(separator: ",")
    }
    
    var body: some View {
        HStack {
            Toggle(isOn: $alarm.isActive) {
                VStack(alignment: .leading, spacing: -2) {
                    HStack(alignment: .bottom, spacing: 5) {
                        Text(formattedTime)
                            .font(.title)
                            .fontWeight(.bold)
                        Text(amPmStr)
                            .font(.headline)
                            .padding(.bottom, 2)
                    }
                    ScrollView(.horizontal) {
                        HStack {
                            Text("\(alarm.title): ")
                                .font(.title3)
                                .fontWeight(.semibold)
                            Text(formattedDays)
                                .font(.subheadline)
                        }
                        .minimumScaleFactor(0.5)
                    }
                }
            }
            .padding()
            .tint(Asset.backgroundTabs.color)
        }
        .background(.ultraThinMaterial)
        .background(Asset.backgroundSecondary.color.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

#Preview {
    AlarmItemView(alarm: AlarmModel.DefaultAlarm())
}
