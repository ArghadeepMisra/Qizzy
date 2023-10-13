import 'package:flutter/material.dart';
import 'package:proj/Data/questions.dart';
import 'package:proj/background.dart';
import 'package:proj/questions.dart';
import 'package:proj/starttext.dart';
import 'package:proj/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'Start_Screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'Quiz_Screen';
    });
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(
        () {
          activeScreen = 'result_screen';
        },
      );
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = Background(StartText(switchScreen));
    if (activeScreen == 'Quiz_Screen') {
      screenWidget = Background(
        Questions(
          onSelectAnswer: chooseAnswers,
        ),
      );
    }
    if (activeScreen == 'result_screen') {
      screenWidget = Background(ResultScreen(
        chosenAnswers: selectedAnswers,
      ));
    }
    return MaterialApp(
      home: Center(
        child: Scaffold(body: screenWidget),
      ),
    );
  }
}
