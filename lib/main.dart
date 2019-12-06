import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound([soundNumber = 1]) {
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () => this.playSound(1),
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () => this.playSound(2),
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () => this.playSound(3),
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () => this.playSound(4),
                color: Colors.green,
              ),
              FlatButton(
                onPressed: () => this.playSound(5),
                color: Colors.teal,
              ),
              FlatButton(
                onPressed: () => this.playSound(6),
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () => this.playSound(7),
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
