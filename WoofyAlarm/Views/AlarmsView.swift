//
//  AlarmsView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import SwiftUI

struct AlarmsView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Asset.labradorCouch.image
                    .resizable()
                    .frame(width: proxy.size.width, height: proxy.size.height * 0.4)
                    .scaledToFit()
                    .offset(y: -15)
                    .shadow(color: .black, radius: 4, x: 0, y: 10)
                BedtimeView()
                AlarmsListView()
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    AlarmsView()
}
