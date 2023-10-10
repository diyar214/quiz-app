class QuizQuestions {
  final String questionText;
  final List<String> answers;

  const QuizQuestions(this.questionText, this.answers);

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
