import 'package:flutter/material.dart';

import '../../widgets/bottom_nav.dart';
import '../../widgets/progress_card.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/topic_card.dart';
import '../../widgets/welcome_banner.dart';
import '../../data/topics_data.dart';
import '../topic/topic_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Python Master",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.person_outline),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const WelcomeBanner(),
            const SizedBox(height: 20),
            const ProgressCard(),
            const SizedBox(height: 20),
            const TopicSearchBar(),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Python Topics",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: GridView.builder(
                itemCount: TopicsData.topics.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final topic = TopicsData.topics[index];

                  return TopicCard(
                    title: topic.title,
                    icon: topic.icon,
                    color: topic.color,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => TopicDetailsScreen(
                            topic: topic,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}