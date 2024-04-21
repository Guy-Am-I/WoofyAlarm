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
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Alarms")
            List {
                //sort by closest to current day & time
                // TODO: Ideas
                //pull down to refresh?
                //edit on tap?
                ForEach(alarms) { alarm in
                    AlarmItemView(alarm: alarm)
                }
                .onDelete(perform: deleteAlarmFromStorage)
                .listRowInsets(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
                .listRowBackground(Asset.backgroundPrimary.color)
            }
            .listStyle(.plain)
            .scrollIndicators(.hidden)
        }
    }
    
    private func deleteAlarmFromStorage(at offsets: IndexSet) {
        offsets.forEach { index in
            do {
                modelContext.delete(alarms[index])
                try modelContext.save()
            } catch {
                print("Unable to delete Alarm: \(alarms[index].id)")
            }
        }
    }
    
}

#Preview {
    AlarmsListView()
}
