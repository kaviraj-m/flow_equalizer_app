import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'equalizer_service.dart';
import 'audio_delay_service.dart';
import 'settings_service.dart';

class EqualizerScreen extends StatefulWidget {
  const EqualizerScreen({super.key});

  @override
  _EqualizerScreenState createState() => _EqualizerScreenState();
}

class _EqualizerScreenState extends State<EqualizerScreen> {
  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  void _loadSettings() {
    final settingsService = context.read<SettingsService>();
    final equalizerService = context.read<EqualizerService>();
    final audioDelayService = context.read<AudioDelayService>();

    equalizerService.setEqualizerBands(settingsService.getEqualizerBands());
    equalizerService.setBassBoost(settingsService.getBassBoost());
    audioDelayService.setDelay(settingsService.getDelay());
  }

  void _saveSettings() {
    final settingsService = context.read<SettingsService>();
    final equalizerService = context.read<EqualizerService>();
    final audioDelayService = context.read<AudioDelayService>();

    settingsService.saveEqualizerBands(equalizerService.equalizerBands);
    settingsService.saveBassBoost(equalizerService.bassBoost);
    settingsService.saveDelay(audioDelayService.delayMillis);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flow Equalizer')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Equalizer Bands'),
            for (int i = 0; i < 5; i++)
              Slider(
                value: context.watch<EqualizerService>().equalizerBands[i],
                onChanged: (value) {
                  context.read<EqualizerService>().setEqualizerBand(i, value);
                },
                min: -12.0,
                max: 12.0,
              ),
            Text('Bass Boost'),
            Slider(
              value: context.watch<EqualizerService>().bassBoost,
              onChanged: (value) {
                context.read<EqualizerService>().setBassBoost(value);
              },
              min: 0.0,
              max: 12.0,
            ),
            Text('Audio Delay (ms)'),
            Slider(
              value: context.watch<AudioDelayService>().delayMillis.toDouble(),
              onChanged: (value) {
                context.read<AudioDelayService>().setDelay(value.toInt());
              },
              min: 0,
              max: 1000,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _saveSettings,
        child: Icon(Icons.save),
      ),
    );
  }
}