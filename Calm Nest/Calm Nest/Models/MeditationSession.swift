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
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                self.sessions = try decoder.decode([MeditationSession].self, from: data)
                print("Loaded sessions: \(sessions.count)")
            } catch {
                print("Decoding error:", error)
            }
        } else {
            print("mock_sessions.json not found in bundle")
        }
    }
}
