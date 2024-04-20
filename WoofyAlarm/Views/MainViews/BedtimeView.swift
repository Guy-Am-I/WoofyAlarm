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
                Button(action: {}, label: {
                    EditLabelView()
                })
            }
        }
        .padding(.vertical)
    }
}


#Preview {
    BedtimeView()
}
