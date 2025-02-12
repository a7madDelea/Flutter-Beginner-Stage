class QuestionModel {
  final String question;
  final List<String> answers;

  const QuestionModel({
    required this.question,
    required this.answers,
  });

  List<String> get getShuffledAnswers {
    final List<String> shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
