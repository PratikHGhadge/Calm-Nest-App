import SwiftUI

struct DailyQuoteView: View {
    let quotes = [
        "Breathe in calm, breathe out stress.",
        "Be present in this moment.",
        "You are enough."
    ]

    var body: some View {
        ZStack {
            Image("calm_background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            Color.black.opacity(0.1) 

            VStack {
                Spacer()
                Text(quotes.randomElement() ?? "Stay positive.")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.black.opacity(0.3))
                    .cornerRadius(12)
                    .padding(.bottom, 100)
            }
            .padding()
        }
    }
}


struct DailyQuoteView_Previews: PreviewProvider {
    static var previews: some View {
        DailyQuoteView()
    }
}
