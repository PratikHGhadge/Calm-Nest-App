import SwiftUI
import AVKit

struct DailyQuoteView: View {
    let quotes = [
        "Breathe in calm, breathe out stress.",
        "Be present in this moment.",
        "You are enough."
    ]

    var body: some View {
        VStack {
            Image("calm_background")
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                .padding()

            Text(quotes.randomElement() ?? "Stay positive.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationTitle("Daily Inspiration")
        .accessibilityElement(children: .combine)
    }
}
