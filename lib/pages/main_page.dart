import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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














