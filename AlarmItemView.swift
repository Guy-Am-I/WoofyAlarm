//
//  AlarmItemView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import SwiftUI

struct AlarmItemView: View {
    @Bindable var alarm: AlarmModel
    
    var formatted24HourTime: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        return dateFormatter.string(from: alarm.alarmTime)
    }
    var formattedDays: String {
        alarm.daysActive.joined(separator: ",")
    }
    
    var body: some View {
        HStack {
            Toggle(isOn: $alarm.isActive) {
                VStack(alignment: .leading, spacing: -2) {
                    Text(formatted24HourTime)
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
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
            .background(.ultraThinMaterial)
            .background(Asset.backgroundSecondary.color.opacity(0.5))
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }
    }
}

#Preview {
    AlarmItemView(alarm: AlarmModel.DefaultAlarm())
}
