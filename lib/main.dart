import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

// A function to that returns a button
Expanded generateButton(Color buttonColor, int soundNumber) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        backgroundColor: buttonColor,
      ),
      onPressed: () {
        final player = AudioPlayer();
        player.play(
          AssetSource('sound_files/note$soundNumber.wav'),
        );
      },
      child: const Text(''),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                generateButton(Colors.red, 1),
                generateButton(Colors.orange, 2),
                generateButton(Colors.yellow, 3),
                generateButton(Colors.green, 4),
                generateButton(Colors.blue, 5),
                generateButton(Colors.indigo, 6),
                generateButton(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
