import 'package:flutter/material.dart';

class ResultBackground extends StatelessWidget {
  const ResultBackground(this.wid, {super.key});
  final Widget? wid;
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 75, 37),
            Color.fromARGB(255, 49, 155, 0)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: wid,
    );
  }
}
