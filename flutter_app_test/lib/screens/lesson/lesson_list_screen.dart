import 'package:flutter/material.dart';

import '../../models/topic.dart';
import '../../data/lessons_data.dart';
import 'lesson_reader_screen.dart';

class LessonListScreen extends StatelessWidget {
  final Topic topic;

  const LessonListScreen({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    final lessons = LessonsData.getLessons(topic.id);

    return Scaffold(
      appBar: AppBar(
        title: Text("${topic.title} Theory"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final lesson = lessons[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 14),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: topic.color.withOpacity(.15),
                child: Text(
                  "${lesson.id}",
                  style: TextStyle(
                    color: topic.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                lesson.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(lesson.duration),
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LessonReaderScreen(
                      topic: topic,
                      lesson: lesson,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}