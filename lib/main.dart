import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'audio_player_service.dart';
import 'equalizer_service.dart';
import 'audio_delay_service.dart';
import 'settings_service.dart';
import 'equalizer_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AudioPlayerService>(
          create: (_) => AudioPlayerService(),
        ),
        ChangeNotifierProvider<EqualizerService>(
          create: (_) => EqualizerService(),
        ),
        ChangeNotifierProvider<AudioDelayService>(
          create: (_) => AudioDelayService(),
        ),
        ChangeNotifierProvider<SettingsService>(
          create: (_) => SettingsService(prefs),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flow Equalizer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: EqualizerScreen(),
    );
  }
}