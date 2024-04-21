//
//  AlarmsListView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import SwiftUI
import SwiftData

struct AlarmsListView: View {
    @Query(sort: [SortDescriptor(\AlarmModel.id)]) var alarms: [AlarmModel]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Alarms")
            ScrollView {
                //sort by closest to current day & time
                // TODO: Ideas
                //pull down to refresh?
                //slide to delete?
                //edit on tap?
                ForEach(alarms) { alarm in
                    AlarmItemView(alarm: alarm)
                        .padding(.bottom, 5)
                }
            }
            .scrollIndicators(.hidden)
        }
    }
    
}

#Preview {
    AlarmsListView()
}
