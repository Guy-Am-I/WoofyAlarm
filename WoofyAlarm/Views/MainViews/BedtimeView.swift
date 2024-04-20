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
            HStack {
                Text("08:30")
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "square.and.pencil.circle")
            }
        }
        .padding(.vertical)
    }
}

#Preview {
    BedtimeView()
}
