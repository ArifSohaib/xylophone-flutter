import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: XylophonePlayer(),
        ),
      ),
    );
  }
}

class XylophonePlayer extends StatelessWidget {
  Widget buildKey({int val, Color buttonColor}) {
    return Expanded(
      child: FlatButton(
        color: buttonColor,
        onPressed: () {
          playSound(val);
        },
      ),
    );
  }

  void playSound(int val) {
    final AudioCache audio = AudioCache();
    audio.play('note$val.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(val: 1, buttonColor: Colors.red),
          buildKey(val: 2, buttonColor: Colors.green),
          buildKey(val: 3, buttonColor: Colors.blue),
          buildKey(val: 4, buttonColor: Colors.yellow),
          buildKey(val: 5, buttonColor: Colors.orange),
          buildKey(val: 6, buttonColor: Colors.purple),
          buildKey(val: 7, buttonColor: Colors.teal),
        ],
      ),
    );
  }
}
