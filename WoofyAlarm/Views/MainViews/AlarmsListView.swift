//
//  AlarmsListView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import SwiftUI

struct AlarmsListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Alarms")
            ScrollView {
                ForEach(0..<10) { i in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.clear)
                        .overlay {
                            Text("\(i)")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                        }
                        .padding(.vertical)
                }
            }
        }
    }
}

#Preview {
    AlarmsListView()
}
