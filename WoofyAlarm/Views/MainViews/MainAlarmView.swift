
import SwiftUI

struct MainAlarmView: View {
    var body: some View {
        TabView {
            Group {
                Text("Placeholder Sleep View")
                    .tabItem {
                        Label("Alarms", systemImage: "moon")
                    }
                Text("Placeholder Sounds View")
                    .tabItem {
                        Label("Sounds", systemImage: "music.quarternote.3")
                    }
                Text("Placeholder Settings View")
                    .tabItem {
                        Label("Settings", systemImage: "gearshape.fill")
                    }
                Text("Placeholder About View")
                    .tabItem {
                        Label("About", systemImage: "info.circle")
                    }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Asset.backgroundPrimary.color)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(Asset.backgroundTabs.color, for: .tabBar)
        }
    }
}

#Preview {
    MainAlarmView()
}
