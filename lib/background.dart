import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background(this.wid, {super.key});
  final Widget? wid;
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 10, 0, 100),
            Color.fromARGB(255, 19, 0, 187)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: wid,
    );
  }
}
