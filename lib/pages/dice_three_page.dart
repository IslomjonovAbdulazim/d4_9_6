import 'package:flutter/material.dart';

class DiceThreePage extends StatefulWidget {
  const DiceThreePage({super.key});

  @override
  State<DiceThreePage> createState() => _DiceThreePageState();
}

class _DiceThreePageState extends State<DiceThreePage> {
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
