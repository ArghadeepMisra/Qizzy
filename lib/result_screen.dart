import 'package:flutter/material.dart';
import 'package:proj/main.dart';
import 'package:proj/quiz.dart';
import 'package:proj/result_background.dart';
import 'package:proj/Data/questions.dart';
import 'package:proj/result_core.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummuryData() {
    final List<Map<String, Object>> summury = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summury.add(
        {
          "question_index": i,
          "question": questions[i].qtext,
          "correct_answer": questions[i].qanswers[0],
          "user_answer": chosenAnswers[i],
        },
      );
    }
    return summury;
  }

  @override
  Widget build(context) {
    final List<Map<String, Object>> summarydata = getSummuryData();
    final int total_questions = chosenAnswers.length;
    final int numofcorrect = summarydata.where(
      (data) {
        return data['correct_answer'] == data['user_answer'];
      },
    ).length;
    return SizedBox(
      width: double.infinity,
      child: ResultBackground(
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Total : $total_questions Correct: $numofcorrect',
                style: const TextStyle(fontSize: 30, color: Color.fromARGB(136, 255, 255, 255), fontFamily: AutofillHints.addressCityAndState),
              ),
              const SizedBox(
                height: 40,
              ),
              ResultCore(
                coreResults: getSummuryData(),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  main();
                },
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 230, 0)),
                child: const Text(
                  "Submit Analysis To Server",
                  style: TextStyle(color: Color.fromARGB(255, 25, 68, 0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
