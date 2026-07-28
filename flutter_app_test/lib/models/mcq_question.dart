class McqQuestion {
  final int id;
  final String question;
  final List<String> options;
  final int correctAnswer;
  final String explanation;

  const McqQuestion({
    required this.id,
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.explanation,
  });
}