import 'package:d4_9_6/pages/dice_five_page.dart';
import 'package:d4_9_6/pages/dice_four_page.dart';
import 'package:d4_9_6/pages/dice_one_page.dart';
import 'package:d4_9_6/pages/dice_three_page.dart';
import 'package:d4_9_6/pages/dice_two_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dices"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                _Item(title: "Dice 1", page: DiceOnePage()),
                _Item(title: "Dice 2", page: DiceTwoPage()),
                _Item(title: "Dice 3", page: DiceThreePage()),
                _Item(title: "Dice 4", page: DiceFourPage()),
                _Item(title: "Dice 5", page: DiceFivePage()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String title;
  final Widget page;

  const _Item({super.key, required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        Get.to(page);
      },
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}














