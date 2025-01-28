# Flow Equalizer: Bass Booster 🎵

A Flutter-based audio equalizer app that enhances your music experience with customizable equalizer presets, bass boosting, audio delay, and more.

![App Screenshot](screenshots/screenshot1.png) <!-- Replace with your own screenshot -->

---

## Features ✨

- **5-Band Equalizer**: Adjust frequencies (60Hz, 230Hz, 910Hz, 4kHz, 14kHz) for precise audio control.
- **Bass Booster**: Amplify low-frequency sounds for deeper bass.
- **Audio Delay**: Synchronize audio with video or external devices (0-1000ms delay).
- **Preset Management**: Save and restore custom equalizer configurations.
- **Material Design UI**: Sleek and intuitive user interface.
- **Cross-Platform**: Works on both Android and iOS devices.

---

## Installation 🚀

### Prerequisites
- Flutter SDK (version 3.0+)
- Android Studio/Xcode (for building and running)
- A physical device or emulator

### Steps
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/flow_equalizer_app.git
   cd flow_equalizer_app
   ```

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the App**:
   ```bash
   flutter run
   ```

---

## Usage 🎧

- **Adjust Equalizer Bands**: Slide the 5 frequency bands to customize your audio profile.
- **Bass Boost**: Use the bass boost slider to enhance low-end frequencies.
- **Audio Delay**: Set a delay (0-1000ms) to sync audio with video.
- **Save Presets**: Tap the floating action button (💾) to save your custom settings.

---

## Dependencies 📦

- **[just_audio](https://pub.dev/packages/just_audio)**: Audio playback support.
- **[provider](https://pub.dev/packages/provider)**: State management.
- **[shared_preferences](https://pub.dev/packages/shared_preferences)**: Save user settings persistently.

---

## Folder Structure 📁

```
flow_equalizer_app/
├── lib/
│   ├── main.dart                   # Main entry point
│   ├── audio_player_service.dart   # Audio playback logic
│   ├── equalizer_service.dart      # Equalizer functionality
│   ├── audio_delay_service.dart    # Audio delay feature
│   ├── settings_service.dart       # Preset management logic
│   └── equalizer_screen.dart       # UI for the equalizer
├── android/                        # Android-specific files
├── ios/                            # iOS-specific files
└── pubspec.yaml                    # Dependency configurations
```

---

## Contributing 🤝

Contributions are welcome! Follow these steps to contribute:

1. **Fork the Repository**.
2. **Create a Feature Branch**:
   ```bash
   git checkout -b feature/awesome-feature
   ```
3. **Commit Your Changes**:
   ```bash
   git commit -m "Add awesome feature"
   ```
4. **Push to Your Branch**:
   ```bash
   git push origin feature/awesome-feature
   ```
5. **Open a Pull Request**.

---

## License 📄

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

Feel free to enhance your music experience with **Flow Equalizer: Bass Booster** and contribute to its development! 🎶
