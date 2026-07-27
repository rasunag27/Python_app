class Lesson {
  final int id;
  final String title;
  final String duration;

  final String theory;
  final String code;
  final String output;
  final String realWorldExample;

  final List<String> interviewQuestions;

  final bool isCompleted;

  const Lesson({
    required this.id,
    required this.title,
    required this.duration,
    required this.theory,
    required this.code,
    required this.output,
    required this.realWorldExample,
    required this.interviewQuestions,
    this.isCompleted = false,
  });
}