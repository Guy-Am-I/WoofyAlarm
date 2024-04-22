//
//  AlarmOptionsView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-21.
//

import SwiftUI

struct AlarmOptionView<Content: View>: View {
    private let label: String
    private let content: () -> Content //Each option has different content
    
    init(label: String, @ViewBuilder content: @escaping () -> Content) {
        self.label = label
        self.content = content
    }
    
    var body: some View {
        HStack {
            Text(label)
            Spacer()
            content()
        }
    }
}


struct AlarmOptionsViewGroup: View {
    var body: some View {
        Group {
            AlarmOptionView(label: "Title") {
                //                    Text("\($alarm.title)")
                TextField("Alarm", text: .constant("test"))
                    .multilineTextAlignment(.trailing)
            }
            AlarmOptionView(label: "Sound") {
                Image(systemName: "pawprint.circle")
                Image(systemName: "greaterthan")
            }
            AlarmOptionView(label: "Repeat") {
                Image(systemName: "pawprint.circle")
                Image(systemName: "greaterthan")
            }
            AlarmOptionView(label: "") {
                Toggle(isOn: .constant(true), label: {
                    Text("Snooze")
                })
            }
        }
    }
}


struct AlarmOptionsView: View {
    var body: some View {
        List {
            AlarmOptionsViewGroup()
            .listRowBackground(Asset.textPrimary.color.opacity(0.1))
            .listRowSeparatorTint(.white)
        }
        .scrollContentBackground(.hidden)
        .tint(Asset.buttonPrimary.color)
    }
}

#Preview {
    AlarmOptionsView()
}
