import AVKit
import SwiftUI

// MARK: - Model
struct MeditationSession: Identifiable, Decodable {
    let id: String
    let title: String
    let duration: String
    let audioURL: String
    let description: String
    let isPremium: Bool
}
