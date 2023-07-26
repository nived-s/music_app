import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  void playSound(int trackNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/assets_note$trackNumber.wav"),
    );
  }

  Expanded xyloButton({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xyloButton(color: Colors.red, soundNumber: 1),
              xyloButton(color: Colors.yellow, soundNumber: 2),
              xyloButton(color: Colors.pink, soundNumber: 3),
              xyloButton(color: Colors.green, soundNumber: 4),
              xyloButton(color: Colors.blue, soundNumber: 5),
              xyloButton(color: Colors.purple, soundNumber: 6),
              xyloButton(color: Colors.teal, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
