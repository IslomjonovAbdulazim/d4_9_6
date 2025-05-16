import 'package:dice_icons/dice_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiceOnePage extends StatefulWidget {
  const DiceOnePage({super.key});

  @override
  State<DiceOnePage> createState() => _DiceOnePageState();
}

class _DiceOnePageState extends State<DiceOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      DiceIcons.dice3,
                      size: 90,
                    ),
                    Icon(
                      DiceIcons.dice6,
                      size: 90,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Total: 7",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 20),
                CupertinoButton(
                  onPressed: () {},
                  child: Text("Roll the Dice"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
