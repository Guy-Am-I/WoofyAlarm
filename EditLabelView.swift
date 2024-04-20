//
//  EditLabelView.swift
//  WoofyAlarm
//
//  Created by Guy Steinberg on 2024-04-20.
//

import SwiftUI

struct EditLabelView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.clear)
            .stroke(Asset.buttonPrimary.color, lineWidth: 3)
            .overlay {
                Image(systemName: "square.and.pencil")
                    .foregroundStyle(Asset.textPrimary.color)
                    .font(.system(size: 30))
                    .offset(y: -4)
                    
            }
            .frame(width: 80, height: 60)
    }
}

#Preview {
    EditLabelView()
}
