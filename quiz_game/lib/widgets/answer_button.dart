import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answer, this.onPressed, {super.key});

  final String answer;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple[900],
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
