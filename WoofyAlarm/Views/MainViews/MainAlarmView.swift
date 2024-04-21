
import SwiftUI
import SwiftData

struct MainAlarmView: View {
    var body: some View {
        TabView {
            Group {
                AlarmsView()
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
        .tint(Asset.textHighlight.color)
        
    }
}

    @MainActor
    let previewContainer: ModelContainer = {
        do {
            let config = ModelConfiguration(isStoredInMemoryOnly: true)
            let container = try ModelContainer(for: AlarmModel.self, configurations: config)
            
            AlarmModel.GenDummyAlarms().forEach { alarm in
                container.mainContext.insert(alarm)
            }
            
            return container
        } catch {
            fatalError("Failed to create preview container")
        }
    }()

    #Preview {
        MainAlarmView().modelContainer(previewContainer)
    }
