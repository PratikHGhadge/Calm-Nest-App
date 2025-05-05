import SwiftUI
import AVKit

struct MeditationListView: View {
    @StateObject private var viewModel = MeditationViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.sessions) { session in
                NavigationLink(destination: MeditationDetailView(session: session)) {
                    VStack(alignment: .leading) {
                        Text(session.title)
                            .font(.headline)
                        Text("Duration: \(session.duration)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Meditation Sessions")
        }
    }
}

struct MeditationListView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationListView()
    }
}
