import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let videoFileName: String

    var body: some View {
        if let url = Bundle.main.url(forResource: videoFileName, withExtension: "mp4") {
            VideoPlayer(player: AVPlayer(url: url))
                .onAppear {
                    AVPlayer(url: url).play()
                }
        } else {
            Text("Video not available")
                .foregroundColor(.red)
        }
    }
}
