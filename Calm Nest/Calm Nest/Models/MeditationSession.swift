import SwiftUI
import AVKit

// MARK: - ViewModel
class MeditationViewModel: ObservableObject {
    @Published var sessions: [MeditationSession] = []

    init() {
        loadMockData()
    }

    private func loadMockData() {
        if let url = Bundle.main.url(forResource: "mock_sessions", withExtension: "json") {
            if let data = try? Data(contentsOf: url) {
                let decoder = JSONDecoder()
                if let decoded = try? decoder.decode([MeditationSession].self, from: data) {
                    self.sessions = decoded
                }
            }
        }
    }
}
