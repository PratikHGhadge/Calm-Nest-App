import AVKit
import SwiftUI

// MARK: - Model
struct MeditationSession: Identifiable, Decodable {
    let id: Int
    let title: String
    let duration: String
    let videoFileName: String
}
