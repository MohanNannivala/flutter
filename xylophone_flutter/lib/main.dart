import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
        child: TextButton(
        onPressed: () {
          Audio audio = Audio.load('assets/note$soundNumber.wav');
          audio.play();
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
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
