import 'package:flutter/material.dart';

class Topic {
  final String id;
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final int theoryCount;
  final int mcqCount;
  final int codingCount;
  final double progress;

  const Topic({
    this.id = '',
    required this.title,
    this.description = '',
    required this.icon,
    required this.color,
    this.theoryCount = 0,
    this.mcqCount = 0,
    this.codingCount = 0,
    this.progress = 0.0,
  });
}