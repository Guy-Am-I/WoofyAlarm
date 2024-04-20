//
//  AlarmsListView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import SwiftUI

struct AlarmsListView: View {
    @State var isAlarmOn: Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            Text("Alarms")
            ScrollView {
                ForEach(0..<10) { i in
                    AlarmItemView(isActive: $isAlarmOn)
                        .padding(.bottom, 5)
                }
            }
        }
    }
}

#Preview {
    AlarmsListView()
}
