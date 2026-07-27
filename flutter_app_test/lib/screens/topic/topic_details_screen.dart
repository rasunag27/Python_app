import 'package:flutter/material.dart';

import '../../models/topic.dart';
import '../../widgets/feature_card.dart';
import '../lesson/lesson_list_screen.dart';

class TopicDetailsScreen extends StatelessWidget {

  final Topic topic;

  const TopicDetailsScreen({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(topic.title),
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(16),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            CircleAvatar(
              radius: 40,
              backgroundColor: topic.color.withOpacity(.15),
              child: Icon(
                topic.icon,
                size: 40,
                color: topic.color,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              topic.title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              topic.description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 24),

            LinearProgressIndicator(
              value: topic.progress,
              minHeight: 10,
              borderRadius: BorderRadius.circular(20),
            ),

            const SizedBox(height: 8),

            Text(
              "Progress : ${(topic.progress * 100).toInt()}%",
            ),

            const SizedBox(height: 30),

            FeatureCard(
              icon: Icons.menu_book,
              title: "Theory",
              subtitle: "${topic.theoryCount} Lessons",
              color: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LessonListScreen(
                      topic: topic,
                    ),
                  ),
                );
              },
            ),

            FeatureCard(
              icon: Icons.quiz,
              title: "MCQ Practice",
              subtitle: "${topic.mcqCount} Questions",
              color: Colors.green,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LessonListScreen(
                      topic: topic,
                    ),
                  ),
                );
              },
            ),

            FeatureCard(
              icon: Icons.code,
              title: "Coding Practice",
              subtitle: "${topic.codingCount} Challenges",
              color: Colors.orange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LessonListScreen(
                      topic: topic,
                    ),
                  ),
                );
              },
            ),

            FeatureCard(
              icon: Icons.emoji_events,
              title: "Final Quiz",
              subtitle: "Unlock after completion",
              color: Colors.purple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LessonListScreen(
                      topic: topic,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}