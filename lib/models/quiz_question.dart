class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledAnswers = List.of(answers); // .of method makes a copy
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
