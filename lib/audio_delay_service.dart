import 'package:flutter/material.dart';

class AudioDelayService with ChangeNotifier {
  int _delayMillis = 0;

  int get delayMillis => _delayMillis;

  void setDelay(int delayMillis) {
    _delayMillis = delayMillis;
    notifyListeners();
  }
}