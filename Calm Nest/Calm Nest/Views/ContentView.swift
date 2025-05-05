import SwiftUI
import AVKit

// MARK: - Views
struct ContentView: View {
    var body: some View {
        TabView {
            MeditationListView()
                .tabItem {
                    Label("Meditate", systemImage: "play.circle")
                }
            DailyQuoteView()
                .tabItem {
                    Label("Daily Quote", systemImage: "sun.max")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
