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
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
