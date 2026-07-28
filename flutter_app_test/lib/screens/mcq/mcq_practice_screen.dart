import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/mcq_question.dart';

class McqPracticeScreen extends StatefulWidget {
  final String title;
  final List<McqQuestion> questions;

  const McqPracticeScreen({
    super.key,
    required this.title,
    required this.questions,
  });

  @override
  State<McqPracticeScreen> createState() => _McqPracticeScreenState();
}

class _McqPracticeScreenState extends State<McqPracticeScreen> {

  late List<McqQuestion> quizQuestions;

  int currentQuestion = 0;

  int? selectedOption;

  bool answered = false;

  int score = 0;

  @override
  void initState() {
    super.initState();

    quizQuestions = List.from(widget.questions);

    quizQuestions.shuffle(Random());

    if (quizQuestions.length > 20) {
      quizQuestions = quizQuestions.take(20).toList();
    }
  }

  void submitAnswer() {

    if (selectedOption == null) return;

    setState(() {
      answered = true;

      if (selectedOption ==
          quizQuestions[currentQuestion].correctAnswer) {
        score++;
      }
    });
  }

  void nextQuestion() {

    if (currentQuestion == quizQuestions.length - 1) {
      return;
    }

    setState(() {
      currentQuestion++;

      selectedOption = null;

      answered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("MCQ Screen"),
      ),
    );
  }

}