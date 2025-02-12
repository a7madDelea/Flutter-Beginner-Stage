import 'package:flutter/material.dart';

import '../data/questions_data.dart';
import '../models/question_model.dart';
import '../widgets/answer_button.dart';
import 'result_screen.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionsScreen> {
  List<String> selectedAnswers = [];
  int currentQuestion = 0;

  @override
  Widget build(BuildContext context) {
    QuestionModel question = questionsData[currentQuestion];
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurpleAccent,
              Colors.purpleAccent,
            ],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '${currentQuestion + 1} From 10',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Text(
              question.question,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            ...question.getShuffledAnswers.map(
              (e) => AnswerButton(
                e,
                () {
                  selectedAnswers.add(e);

                  if (selectedAnswers.length != questionsData.length) {
                    setState(() {
                      currentQuestion++;
                    });
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => ResultScreen(selectedAnswers),
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
