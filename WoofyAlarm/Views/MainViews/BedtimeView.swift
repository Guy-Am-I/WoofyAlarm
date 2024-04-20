//
//  BedtimeView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import SwiftUI

struct BedtimeView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sleep Time")
                .font(.headline)
            HStack {
                BedtimeDurationView(hour: 8, minute: 30)
                Spacer()
                EditLabelView()
            }
            .padding(.trailing)
        }
        .padding(.vertical)
    }
}

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

#Preview {
    BedtimeView()
}
