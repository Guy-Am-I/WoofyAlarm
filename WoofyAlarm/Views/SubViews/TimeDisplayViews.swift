//
//  TimeDisplayViews.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import SwiftUI


struct BedtimeDurationView: View {
    let hour: Int
    let minute: Int
    
    var body: some View {
        HStack(alignment: .bottom) {
            Text(hour < 10 ? "0\(hour)" : "\(hour)")
                .font(.system(size: 60))
                .fontWeight(.bold)
            Text("hr")
                .font(.title)
                .fontWeight(.thin)
                .padding(.bottom, 10)
            Text("\(minute)")
                .font(.system(size: 60))
                .fontWeight(.bold)
            Text("min")
                .font(.title)
                .fontWeight(.thin)
                .padding(.bottom, 10)
        }
    }
}
//
//func formattedTime: String {
//    alarmTime.formatted(date: .omitted, time: .shortened)
//}
