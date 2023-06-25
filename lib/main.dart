import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource("note$soundNumber.wav"),
    );
  }

  Expanded buildKey({Color color = Colors.red, int soundNumber = 1}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: const Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.blue, soundNumber: 2),
              buildKey(color: Colors.green, soundNumber: 3),
              buildKey(color: Colors.yellow, soundNumber: 4),
              buildKey(color: Colors.purple, soundNumber: 5),
              buildKey(color: Colors.pink, soundNumber: 6),
              buildKey(color: Colors.white, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
