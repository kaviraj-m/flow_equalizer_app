import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService with ChangeNotifier {
  final SharedPreferences _prefs;

  SettingsService(this._prefs);

  void saveEqualizerBands(List<double> bands) {
    _prefs.setStringList('equalizerBands', bands.map((e) => e.toString()).toList());
    notifyListeners();
  }

  List<double> getEqualizerBands() {
    List<String>? bands = _prefs.getStringList('equalizerBands');
    return bands?.map((e) => double.parse(e)).toList() ?? [0.0, 0.0, 0.0, 0.0, 0.0];
  }

  void saveBassBoost(double gain) {
    _prefs.setDouble('bassBoost', gain);
    notifyListeners();
  }

  double getBassBoost() {
    return _prefs.getDouble('bassBoost') ?? 0.0;
  }

  void saveDelay(int delayMillis) {
    _prefs.setInt('delayMillis', delayMillis);
    notifyListeners();
  }

  int getDelay() {
    return _prefs.getInt('delayMillis') ?? 0;
  }
}