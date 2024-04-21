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
                        .swipeActions(allowsFullSwipe: false) {
                            Button(role: .destructive, action: {deleteAlarmFromStorage(for: alarm)}, label: {
                                Label("Delete", systemImage: "trash.fill")
                            })
                            .tint(.red)
                        }
                }
                .listRowInsets(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
                .listRowBackground(Asset.backgroundPrimary.color)
            }
            .listStyle(.plain)
            .scrollIndicators(.hidden)
        }
    }
    
    private func deleteAlarmFromStorage(for model: AlarmModel) {
        do {
            modelContext.delete(model)
            try modelContext.save()
        } catch {
            print("Unable to delete Alarm: \(model.id)")
        }
        
    }
    
}

#Preview {
    AlarmsListView()
}
