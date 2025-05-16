import 'dart:math';

import 'package:dice_icons/dice_icons.dart';
import 'package:flutter/cupertino.dart';
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
  double progressOne = 0;
  double progressTwo = 0;

  void randomDice() {
    final random1 = Random().nextInt(6) + 1;
    diceOneIcon = getDiceIcon(random1);
    final random2 = Random().nextInt(6) + 1;
    diceTwoIcon = getDiceIcon(random2);
    total = random1 + random2;
    if (turn) {
      playerOneScore += total;
      count += 1;
      progressOne = playerOneScore / (count * 12);
    } else {
      playerTwoScore += total;
      progressTwo = playerTwoScore / (count * 12);
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
      appBar: AppBar(
        centerTitle: true,
        title: Text("Level 3"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Count: $count,  "),
                    Text("Turn: Player ${turn ? 1 : 2}"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(diceOneIcon, size: 90),
                    Icon(diceTwoIcon, size: 90),
                  ],
                ),
                SizedBox(height: 20),
                Text("Total: $total"),
                SizedBox(height: 10),
                CupertinoButton(
                  color: Colors.yellow,
                  onPressed: () {
                    randomDice();
                  },
                  child: Center(child: Text("Roll the Dice")),
                ),
                SizedBox(height: 30),
                Text(
                    "Player 1: $playerOneScore, ${(progressOne * 100).toStringAsFixed(2)}%"),
                SizedBox(height: 5),
                LinearProgressIndicator(value: progressOne),
                SizedBox(height: 30),
                Text(
                    "Player 2: $playerTwoScore, ${(progressTwo * 100).toStringAsFixed(2)}%"),
                SizedBox(height: 5),
                LinearProgressIndicator(value: progressTwo),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
