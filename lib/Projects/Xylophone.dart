import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';


class SectionNine extends StatefulWidget {
  const SectionNine({Key? key}) : super(key: key);

  @override
  State<SectionNine> createState() => _SectionNineState();
}

class _SectionNineState extends State<SectionNine> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
        ),
        backgroundColor: Colors.teal[100],
        body: XylophoneUI(context),
      ),
    );
  }

  void playMusic(int musicNumber){
    final player = AudioCache();
    player.play('note$musicNumber.wav');
  }

  Widget UI({required int n,required Color color}){
    return Expanded(
        child: FlatButton(
          onPressed: () {
            playMusic(n);
          },
          color: color, child: Text(''),
        ));
  }

  Widget XylophoneUI(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        UI(n: 1,color: Colors.yellowAccent),
        UI(n: 2,color: Colors.greenAccent),
        UI(n: 3,color: Colors.redAccent),
        UI(n: 4,color: Colors.blueAccent),
        UI(n: 5,color: Colors.amberAccent),
        UI(n: 6,color: Colors.deepOrange),
        UI(n: 7,color: Colors.pinkAccent),
      ],
    );
  }
}