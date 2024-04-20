
import SwiftUI

struct MainAlarmView: View {
    let textLocalTest: LocalizedStringKey = "Hello World"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(textLocalTest)
        }
        .padding()
    }
}

#Preview {
    MainAlarmView()
}
