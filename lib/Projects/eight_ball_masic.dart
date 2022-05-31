import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';



class eightballmagic extends StatefulWidget {
  const eightballmagic({Key? key}) : super(key: key);

  @override
  State<eightballmagic> createState() => _eightballmagicState();
}

class _eightballmagicState extends State<eightballmagic> {
  int ballNumber = 1;
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dicee App'),
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(child: eightball(context)),
      ),
    );
  }

  Widget eightball(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    ballNumber = 1 + random.nextInt(5 - 1);
                    print(ballNumber);
                  });
                },
                child: Image.asset('images/ball$ballNumber.png')),
          ),
        ],
      ),
    );
  }

  void changeBall() {
    setState(() {
      ballNumber = 1 + random.nextInt(5 - 1);
    });
  }
}