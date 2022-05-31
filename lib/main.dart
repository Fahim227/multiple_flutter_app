import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:my_flutter_app/Projects/Xylophone.dart';
import 'package:my_flutter_app/Projects/dice.dart';
import 'package:my_flutter_app/Projects/eight_ball_masic.dart';

void main() => runApp(
  MaterialApp(
    initialRoute: '/xylophone',
    routes: {
      '/xylophone': (context) => SectionNine(),
      '/eight_ball_masic': (context) => eightballmagic(),
      '/dicee': (context) => DiceePage(),
    },
  )
);

