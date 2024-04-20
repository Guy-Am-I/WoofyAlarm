//
//  AlarmItemView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import SwiftUI

struct AlarmItemView: View {
    let hour: Int = 0
    let min: Int = 0
    let daysActive: String = ""
    @Binding var isActive: Bool
    var body: some View {
        HStack {
            Toggle(isOn: $isActive) {
                VStack(alignment: .leading) {
                    Text("08:00")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Mon-Fri")
                }
            }
            .tint(Asset.backgroundTabs.color)
            .padding()
            .background(.ultraThinMaterial)
            .background(Asset.backgroundSecondary.color.opacity(0.8))
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }
    }
}

#Preview {
    AlarmItemView(isActive: .constant(true))
}
