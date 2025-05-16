import 'dart:math';

import 'package:dice_icons/dice_icons.dart';
import 'package:flutter/material.dart';

class DiceThreePage extends StatefulWidget {
  const DiceThreePage({super.key});

  @override
  State<DiceThreePage> createState() => _DiceThreePageState();
}

class _DiceThreePageState extends State<DiceThreePage> {
  var diceOneIcon = DiceIcons.dice0;
  var diceTwoIcon = DiceIcons.dice0;
  int total = 0;
  int playerOneScore = 0;
  int playerTwoScore = 0;
  bool turn = true;
  int count = 0;

  void randomDice() {
    final random1 = Random().nextInt(6) + 1;
    diceOneIcon = getDiceIcon(random1);
    final random2 = Random().nextInt(6) + 1;
    diceTwoIcon = getDiceIcon(random2);
    total = random1 + random2;
    if (turn) {
      playerOneScore += total;
      count += 1;
    } else {
      playerTwoScore += total;
    }
    turn = !turn;
    setState(() {});
  }

  IconData getDiceIcon(int number) {
    if (number == 1) {
      return DiceIcons.dice1;
    } else if (number == 2) {
      return DiceIcons.dice2;
    } else if (number == 3) {
      return DiceIcons.dice3;
    } else if (number == 4) {
      return DiceIcons.dice4;
    } else if (number == 5) {
      return DiceIcons.dice5;
    } else if (number == 6) {
      return DiceIcons.dice6;
    } else {
      return DiceIcons.dice0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
