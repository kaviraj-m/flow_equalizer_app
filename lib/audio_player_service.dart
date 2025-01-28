import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerService with ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  bool get isPlaying => _isPlaying;

  Future<void> play(String filePath) async {
    await _audioPlayer.setFilePath(filePath);
    await _audioPlayer.play();
    _isPlaying = true;
    notifyListeners(); 
  }

  Future<void> stop() async {
    await _audioPlayer.stop();
    _isPlaying = false;
    notifyListeners();
  }

  Future<void> setVolume(double volume) async {
    await _audioPlayer.setVolume(volume);
    notifyListeners();
  }
}