import 'dart:math';

import 'package:dice_icons/dice_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiceTwoPage extends StatefulWidget {
  const DiceTwoPage({super.key});

  @override
  State<DiceTwoPage> createState() => _DiceTwoPageState();
}

class _DiceTwoPageState extends State<DiceTwoPage> {
  final dices = <IconData>[];
  int total = 0;

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
    for (int i = 0; i < dices.length; i++) {
      final random = Random().nextInt(6) + 1;

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Level 2"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        CupertinoButton(
                          color: Colors.green,
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Icon(CupertinoIcons.add),
                        ),
                        SizedBox(height: 10),
                        CupertinoButton(
                          color: Colors.red,
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Icon(CupertinoIcons.minus),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: SizedBox(
                        height: 90,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Icon(DiceIcons.dice3, size: 90);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CupertinoButton(
                  color: Colors.yellow,
                  onPressed: () {},
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
