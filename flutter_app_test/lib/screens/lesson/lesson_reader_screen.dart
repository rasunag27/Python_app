import 'package:flutter/material.dart';

import '../../models/lesson.dart';
import '../../models/topic.dart';

class LessonReaderScreen extends StatelessWidget {
  final Topic topic;
  final Lesson lesson;

  const LessonReaderScreen({
    super.key,
    required this.topic,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Title
            Text(
              lesson.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              lesson.duration,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 24),

            /// Theory
            const Text(
              "📖 Theory",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              lesson.theory,
              style: const TextStyle(
                fontSize: 17,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 30),

            /// Code
            const Text(
              "💻 Example",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                lesson.code,
                style: const TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 15,
                ),
              ),
            ),

            const SizedBox(height: 30),

            /// Output
            const Text(
              "✅ Output",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                lesson.output,
                style: const TextStyle(
                  fontFamily: 'monospace',
                ),
              ),
            ),

            const SizedBox(height: 30),

            /// Real-world Example
            const Text(
              "🌍 Real-world Example",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              lesson.realWorldExample,
              style: const TextStyle(
                fontSize: 17,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 30),

            /// Interview Questions
            const Text(
              "🧠 Interview Questions",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            ...lesson.interviewQuestions.map(
              (question) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "• $question",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}