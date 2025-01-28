import 'package:flutter/material.dart';

class EqualizerService with ChangeNotifier {
  List<double> _equalizerBands = [0.0, 0.0, 0.0, 0.0, 0.0]; // 5-band equalizer
  double _bassBoost = 0.0;

  List<double> get equalizerBands => _equalizerBands;
  double get bassBoost => _bassBoost;

  
  void setEqualizerBand(int index, double gain) {
    _equalizerBands[index] = gain;
    notifyListeners();
  }

  
  void setEqualizerBands(List<double> bands) {
    _equalizerBands = bands;
    notifyListeners();
  }

  void setBassBoost(double gain) {
    _bassBoost = gain;
    notifyListeners();
  }
}