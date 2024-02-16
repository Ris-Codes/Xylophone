import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playSound(int index) {
      final player = AudioPlayer();
      player.play(AssetSource('note$index.wav'));
    }

    Expanded playKey({required Color colorName, required int soundNum}) {
      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: colorName),
          onPressed: () {
            playSound(soundNum);
          },
          child: Container(),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playKey(colorName: Colors.red, soundNum: 1),
              playKey(colorName: Colors.orange, soundNum: 2),
              playKey(colorName: Colors.yellow, soundNum: 3),
              playKey(colorName: Colors.green, soundNum: 4),
              playKey(colorName: Colors.blue, soundNum: 5),
              playKey(colorName: Colors.indigo, soundNum: 6),
              playKey(colorName: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
