import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int audionNum){
    final player=AudioCache();
    player.play('note$audionNum.wav');
  }

  Expanded buildKey(Color c,int soundNum){
    return Expanded(
      flex: 1,
      child: FlatButton(
          color: c,
          onPressed: (){
            playSound(soundNum);
          },
          child: Text('Click me!!')
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
            children: <Widget>[
              buildKey(Colors.red,1),
              buildKey(Colors.cyan,2),
              buildKey(Colors.teal,3),
              buildKey(Colors.blue,4),
              buildKey(Colors.green,5),
              buildKey(Colors.yellow,6),
              buildKey(Colors.indigo,7)

            ],
          ),
        ),
      ),
    );
  }
}
