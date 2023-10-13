import 'package:flutter/material.dart';
import 'package:proj/answers.dart';
import 'package:proj/Data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  int qnum = 0;
  void quesnuminc(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(
      () {
        qnum++;
      },
    );
  }

  @override
  Widget build(context) {
    final ques = questions[qnum];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              ques.qtext,
              style: GoogleFonts.lato(color: const Color.fromARGB(255, 200, 208, 255), fontSize: 25),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            ...ques.shuffledList().map(
              (qanswers) {
                return Answers(
                    fans: () {
                      quesnuminc(qanswers);
                    },
                    atext: qanswers);
              },
            )
          ],
        ),
      ),
    );
  }
}
