import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void playsound(int soundnum) {
    final player = AudioCache();
    player.play('note$soundnum.wav');
  }

  Expanded buildkey({Color color, int soundnum}) {
    return Expanded(
        child: FlatButton(
            color: color,
            onPressed: () {
              playsound(soundnum);
            },
            child: Text('clcik'),
          );
        );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            buildkey(color: Colors.red, soundnum: 1);
          ]
      ),
    ));
  }
}
