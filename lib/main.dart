import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color colorwa, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: colorwa,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colorwa: Colors.red, soundNumber: 1),
              buildKey(colorwa: Colors.orange, soundNumber: 2),
              buildKey(colorwa: Colors.yellow, soundNumber: 3),
              buildKey(colorwa: Colors.green, soundNumber: 4),
              buildKey(colorwa: Colors.pink, soundNumber: 5),
              buildKey(colorwa: Colors.blue, soundNumber: 6),
              buildKey(colorwa: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
