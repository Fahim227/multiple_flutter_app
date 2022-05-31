
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';



class DiceePage extends StatefulWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  State<DiceePage> createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int left = 1;
  int right = 1;
  Random random = new Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dicee App'),
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(child: dicee(context)),
      ),
    );
  }

  Widget dicee(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeDice();
                    });
                  },
                  child: Image.asset('images/dice$left.png'))),
          const SizedBox(
            width: 2,
          ),
          Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeDice();
                    });
                  },
                  child: Image.asset('images/dice$right.png'))),
        ],
      ),
    );
  }

  void changeDice() {
    left = 1 + random.nextInt(6 - 1);
    right = 1 + random.nextInt(6 - 1);
  }
}
