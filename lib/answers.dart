import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  const Answers({super.key, required this.atext, required this.fans});
  final String atext;
  final void Function() fans;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: fans,
      style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), backgroundColor: Colors.white, foregroundColor: Colors.black),
      child: Text(
        atext,
        textAlign: TextAlign.center,
      ),
    );
  }
}
