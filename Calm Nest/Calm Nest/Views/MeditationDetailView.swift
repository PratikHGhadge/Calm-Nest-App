import SwiftUI
import AVKit

struct MeditationDetailView: View {
    let session: MeditationSession

    var body: some View {
        VStack {
            AudioPlayerView(audioURL: session.audioURL)
                .frame(height: 60)
                .padding()

            Text(session.title)
                .font(.title)
                .padding(.top)

            Text("Duration: \(session.duration)")
                .font(.subheadline)
                .foregroundColor(.gray)

            Text(session.description)
                .font(.body)
                .padding()

            Spacer()
        }
        .navigationTitle("Meditation")
        .navigationBarTitleDisplayMode(.inline)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(session.title), duration \(session.duration)")
    }
}

struct AudioPlayerView: View {
    let audioURL: String
    @State private var player: AVPlayer?

    var body: some View {
        HStack {
            Button(action: {
                if let url = URL(string: audioURL) {
                    player = AVPlayer(url: url)
                    player?.play()
                }
            }) {
                Image(systemName: "play.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
            }

            Button(action: {
                player?.pause()
            }) {
                Image(systemName: "pause.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
        }
    }
}

