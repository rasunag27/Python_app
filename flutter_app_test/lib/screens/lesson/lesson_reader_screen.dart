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

  List<String> _splitContent(String content) {
  final normalized = content.trim();

  if (normalized.isEmpty) {
    return [];
  }

  // Only split when the lesson explicitly contains multiple examples.
  if (normalized.contains('---EXAMPLE---')) {
    return normalized
        .split('---EXAMPLE---')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();
  }

  // Otherwise treat the entire code block as one example.
  return [normalized];
}

  int _countPrintStatements(String codeSection) {
    return RegExp(r'\bprint\s*\(').allMatches(codeSection).length;
  }

  List<String> _buildOutputSections(
    List<String> codeSections,
    String output,
) {
  final outputs = _splitContent(output);

  // Same number of examples and outputs.
  if (outputs.length == codeSections.length) {
    return outputs;
  }

  // Single example.
  if (codeSections.length == 1) {
    return [output.trim()];
  }

  // Multiple examples but fewer outputs.
  return List.generate(
    codeSections.length,
    (index) => index < outputs.length ? outputs[index] : '',
  );
}

  Widget _buildExampleSection({
    required int index,
    required String code,
    required String output,
  }) {
    final showNumbering = code.contains(RegExp(r'\n\s*\n')) ||
        output.contains(RegExp(r'\n\s*\n')) ||
        index > 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          showNumbering ? 'Example ${index + 1}' : 'Example',
          style: const TextStyle(
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
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SelectableText(
              code,
              style: const TextStyle(
                fontFamily: 'monospace',
                fontSize: 15,
                height: 1.5,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          showNumbering ? 'Output ${index + 1}' : 'Output',
          style: const TextStyle(
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
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SelectableText(
              output,
              style: const TextStyle(
                fontFamily: 'monospace',
                fontSize: 15,
                height: 1.5,
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }

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

            /// Examples
            ...() {
              // New format using List<Example>
              if (lesson.examples.isNotEmpty) {
                return List.generate(
                  lesson.examples.length,
                  (index) => _buildExampleSection(
                    index: index,
                    code: lesson.examples[index].code,
                    output: lesson.examples[index].output,
                  ),
                );
              }

              // Old format (backward compatibility)
              final codeSections = _splitContent(lesson.code);
              final outputSections =
                  _buildOutputSections(codeSections, lesson.output);

              final sectionCount = codeSections.isNotEmpty
                  ? codeSections.length
                  : (outputSections.isNotEmpty ? outputSections.length : 1);

              return List.generate(sectionCount, (index) {
                final code =
                    codeSections.length > index ? codeSections[index] : '';

                final output =
                    outputSections.length > index ? outputSections[index] : '';

                return _buildExampleSection(
                  index: index,
                  code: code,
                  output: output,
                );
              });
            }(),

            const SizedBox(height: 20),

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