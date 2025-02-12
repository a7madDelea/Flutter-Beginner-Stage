import 'package:flutter/material.dart';

import '../data/questions_data.dart';
import '../widgets/summary.dart';
import 'home_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
    this.selectedAnswers, {
    super.key,
  });

  final List<String> selectedAnswers;

  List<Map<String, Object>> get _summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questionsData[i].question,
        'correct_answer': questionsData[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    int numOfCorrectAnswers = _summaryData
        .where((element) => element['user_answer'] == element['correct_answer'])
        .length;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurpleAccent,
              Colors.purpleAccent,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $numOfCorrectAnswers out of ${questionsData.length} questions correctly!',
              style: const TextStyle(
                color: Color.fromARGB(255, 250, 205, 254),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Summary(_summaryData),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const HomeScreen(),
                ),
              ),
              icon: const Icon(
                Icons.restart_alt_outlined,
                color: Color.fromARGB(255, 250, 205, 254),
              ),
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(
                  color: Color.fromARGB(255, 250, 205, 254),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
