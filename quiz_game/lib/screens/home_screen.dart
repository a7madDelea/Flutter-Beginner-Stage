import 'package:flutter/material.dart';

import 'questions_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
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
          children: [
            Image.asset(
              'images/quiz-logo.png',
              width: 300,
              color: const Color.fromRGBO(255, 255, 255, .65),
            ),
            const SizedBox(height: 80),
            Text(
              'Learn Flutter!',
              style: TextStyle(
                fontSize: 24,
                color: const Color.fromRGBO(255, 255, 255, .65),
              ),
            ),
            const SizedBox(height: 40),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromRGBO(255, 255, 255, .65),
              ),
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const QuestionsScreen(),
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt_outlined),
              label: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
