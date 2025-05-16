import 'dart:math';

import 'package:dice_icons/dice_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiceOnePage extends StatefulWidget {
  const DiceOnePage({super.key});

  @override
  State<DiceOnePage> createState() => _DiceOnePageState();
}

class _DiceOnePageState extends State<DiceOnePage> {
  IconData dice1Icon = DiceIcons.dice3;
  IconData dice2Icon = DiceIcons.dice6;
  int total = 9;

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

  void randomDice() {
    int dice1 = Random().nextInt(6) + 1;
    int dice2 = Random().nextInt(6) + 1;
    total = dice1 + dice2;
    dice1Icon = getDiceIcon(dice1);
    dice2Icon = getDiceIcon(dice2);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Level 1"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(dice1Icon, size: 90),
                    Icon(dice2Icon, size: 90),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Total: $total",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 20),
                CupertinoButton(
                  color: Colors.yellow,
                  onPressed: () {
                    randomDice();
                  },
                  child: Center(child: Text("Roll the Dice")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
