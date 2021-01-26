import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numberSound) {
    final player = AudioCache();
    player.play('note$numberSound.wav');
  }

  Widget buildKey({Color color, int soundNumber, double hPadding}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: hPadding),
      height: 50.0,
      child: MaterialButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildKey(color: Colors.red, soundNumber: 1, hPadding: 10.0),
              buildKey(color: Colors.orange, soundNumber: 2, hPadding: 30.0),
              buildKey(color: Colors.yellow, soundNumber: 3, hPadding: 50.0),
              buildKey(color: Colors.green, soundNumber: 4, hPadding: 70.0),
              buildKey(color: Colors.lightBlue, soundNumber: 5, hPadding: 90.0),
              buildKey(
                  color: Colors.blue.shade700, soundNumber: 6, hPadding: 110.0),
              buildKey(color: Colors.purple, soundNumber: 7, hPadding: 130.0),
              buildKey(
                  color: Colors.redAccent, soundNumber: 1, hPadding: 150.0),
            ],
          ),
        ),
      ),
    );
  }
}
