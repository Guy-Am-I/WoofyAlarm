//
//  AddEditAlarmView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-21.
//

import SwiftUI

struct AddEditAlarmView: View {
    var alarm: AlarmModel = AlarmModel.DefaultAlarm()
    var body: some View {
        ZStack {
            Asset.backgroundPrimary.color
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    AddEditAlarmView()
}
