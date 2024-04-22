//
//  AlarmsListView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import SwiftUI
import SwiftData

struct AlarmsListView: View {
    @Query var alarms: [AlarmModel]
    @Environment(\.modelContext) private var modelContext
    @State var showAddAlarmPopover: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Alarms")
                Spacer()
                Button {withAnimation {showAddAlarmPopover.toggle()}} label: {
                    Image(systemName: "plus")
                }
            }
            .padding(.horizontal)
            .font(.title3)
            List {
                //sort by closest to current day & time
                // TODO: Ideas
                //pull down to refresh?
                //edit on tap?
                ForEach(alarms) { alarm in
                    AlarmItemView(alarm: alarm)
                        .swipeActions(allowsFullSwipe: true) {
                            Button(role: .destructive, action: {deleteAlarmFromStorage(for: alarm)}, label: {
                                Label("Delete", systemImage: "trash.fill")
                            })
                            .tint(.red)
                        }
                }
                .listRowInsets(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
                .background(Asset.textPrimary.color.opacity(0.1))
                .listRowBackground(Asset.backgroundPrimary.color)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            }
            .listStyle(.plain)
            .scrollIndicators(.hidden)
        }
        .popover(isPresented: $showAddAlarmPopover) {
            AddEditAlarmView() //TODO: pas
                .presentationBackground(Asset.backgroundPrimary.color)
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
