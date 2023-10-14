class QuizQuestions {
  final String questionText;
  final List<String> answers;

  const QuizQuestions(this.questionText, this.answers);

  List<String> get shuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
