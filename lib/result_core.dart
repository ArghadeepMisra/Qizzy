import 'package:flutter/material.dart';

class ResultCore extends StatelessWidget {
  const ResultCore({required this.coreResults, super.key});
  final List<Map<String, Object>> coreResults;
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: coreResults.map(
              (data) {
                return Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(40),
                      child: Text(
                        ((data["question_index"] as int) + 1).toString(),
                        style: const TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (data["question"]) as String,
                            style: const TextStyle(color: Colors.white60, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            (data["user_answer"]) as String,
                            style: const TextStyle(color: Color.fromARGB(255, 255, 171, 244), fontSize: 18),
                          ),
                          Text(
                            (data["correct_answer"]) as String,
                            style: const TextStyle(fontSize: 16, color: Color.fromARGB(221, 74, 173, 255)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
