import 'package:flutter/material.dart';

import '../models/topic.dart';

class TopicsData {
  static const List<Topic> topics = [
    Topic(
      id: "lists",
      title: "Lists",
      description: "Learn everything about Python Lists.",
      icon: Icons.list_alt,
      color: Colors.blue,
      theoryCount: 20,
      mcqCount: 50,
      codingCount: 25,
      progress: 0.0,
    ),
    Topic(
      id: "tuples",
      title: "Tuples",
      description: "Understand Python Tuples and their use cases.",
      icon: Icons.link,
      color: Colors.orange,
      theoryCount: 15,
      mcqCount: 40,
      codingCount: 20,
      progress: 0.0,
    ),
    Topic(
      id: "dictionary",
      title: "Dictionary",
      description: "Master Python Dictionaries with practical examples.",
      icon: Icons.menu_book,
      color: Colors.green,
      theoryCount: 18,
      mcqCount: 45,
      codingCount: 22,
      progress: 0.0,
    ),
    Topic(
      id: "sets",
      title: "Sets",
      description: "Explore Python Sets and set operations.",
      icon: Icons.inventory_2,
      color: Colors.deepPurple,
      theoryCount: 12,
      mcqCount: 35,
      codingCount: 18,
      progress: 0.0,
    ),
    Topic(
      id: "functions",
      title: "Functions",
      description: "Learn how to write and use Python Functions.",
      icon: Icons.functions,
      color: Colors.red,
      theoryCount: 25,
      mcqCount: 60,
      codingCount: 30,
      progress: 0.0,
    ),
    Topic(
      id: "classes",
      title: "Classes",
      description: "Dive into Python Classes and Object-Oriented Programming.",
      icon: Icons.school,
      color: Colors.teal,
      theoryCount: 30,
      mcqCount: 70,
      codingCount: 35,
      progress: 0.0,
    ),
  ];
}