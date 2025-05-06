# Calm-Nest-App
CalmNest meditation app using SwiftUI and AVPlayer. It includes a tab-based layout, video playback for meditation sessions, accessibility features, and daily quotes.

# CalmNest – SwiftUI Meditation App

CalmNest is a beginner-friendly meditation app built using **SwiftUI**, designed to help users relax with guided audio sessions and daily inspirational quotes. It demonstrates essential concepts in iOS development, such as MVVM architecture, AVPlayer integration, JSON decoding, accessibility support, and tab-based navigation.

---
<p float="left">
  <img src="https://github.com/user-attachments/assets/f30bf642-76ec-4af7-b3a2-c50608f49f3e" width="30%" />
  <img src="https://github.com/user-attachments/assets/7d9985c7-d254-4767-9014-2572efe6c63f" width="30%" />
  <img src="https://github.com/user-attachments/assets/c7a38576-073a-4d85-a129-189aeb3d6789" width="30%" />
</p>
---

## 🧘‍♀️ Features

- 📋 List of meditation sessions with duration and description
- 🔊 Audio playback using AVPlayer
- ☀️ Daily quote screen with calming background
- 📂 Loads mock session data from bundled JSON file
- 🎨 Built using SwiftUI views and layout best practices

---

## 📁 Project Structure

- **Model**: `MeditationSession.swift` – Represents each meditation session
- **ViewModel**: `MeditationViewModel.swift` – Loads and manages session data
- **Views**:
  - `MeditationListView` – Lists all sessions
  - `MeditationDetailView` – Shows session details and playback controls
  - `AudioPlayerView` – A reusable wrapper for AVPlayer-based audio playback
  - `DailyQuoteView` – Displays a daily motivational quote with full-screen image
- **Assets**: 
  - `mock_sessions.json` – JSON data used to populate the session list
  - `calm_background` – Background image for the quote screen

---

## 🔧 How to Run

1. Open the project in **Xcode 15+**
2. Make sure `mock_sessions.json` and `calm_background` image are added to your asset/catalogue bundle.
3. Build and run on iOS Simulator or device (iOS 15+ recommended)

---

## 📦 Technologies Used

- **SwiftUI**
- **AVKit (AVPlayer)**
- **MVVM Architecture**
- **JSON Decoding**
- **Basic Accessibility API**

---

## 📌 Future Improvements

- Support for real-time quotes from an API
- Premium session lock/unlock flow
- Enhanced AVPlayer controls with progress tracking
- Bookmark or favorite sessions
  
---

Made with ❤️ using SwiftUI.
