import SwiftUI
import AVKit

struct MeditationDetailView: View {
    let session: MeditationSession

    var body: some View {
        VStack {
            VideoPlayerView(videoFileName: session.videoFileName)
                .frame(height: 300)
                .cornerRadius(12)
                .padding()

            Text(session.title)
                .font(.title)
                .padding(.top)

            Text("Duration: \(session.duration)")
                .font(.subheadline)
                .foregroundColor(.gray)

            Spacer()
        }
        .navigationTitle("Meditation")
        .navigationBarTitleDisplayMode(.inline)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(session.title), duration \(session.duration)")
    }
}
