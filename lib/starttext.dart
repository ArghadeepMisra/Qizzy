import 'package:flutter/material.dart';

class StartText extends StatelessWidget {
  const StartText(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/png-transparent-wolf-logo-symbol.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 40),
          const Text(
            "INPS 2.0",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: startQuiz,
            label: const Text(
              'Log in to Test Server',
              style: TextStyle(color: Color.fromARGB(255, 9, 63, 156)),
            ),
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          )
        ],
      ),
    );
  }
}
