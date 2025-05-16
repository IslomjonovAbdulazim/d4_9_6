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

  @override
  void initState() {
    dices.add(DiceIcons.dice0);
    randomDice();
    super.initState();
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

  void randomDice() {
    total = 0;
    for (int i = 0; i < dices.length; i++) {
      final random = Random().nextInt(6) + 1;
      final icon = getDiceIcon(random);
      dices[i] = icon;
      total += random;
    }
    setState(() {});
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
                          onPressed: () {
                            if (dices.length == 5) return;
                            dices.add(DiceIcons.dice1);
                            randomDice();
                          },
                          child: Icon(CupertinoIcons.add),
                        ),
                        SizedBox(height: 10),
                        CupertinoButton(
                          color: Colors.red,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            if (dices.length == 1) return;
                            dices.removeLast();
                            randomDice();
                          },
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
                          itemCount: dices.length,
                          itemBuilder: (context, index) {
                            return Icon(dices[index], size: 90);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Dices: ${dices.length} = $total",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
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
