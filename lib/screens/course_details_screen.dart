import 'package:flutter/material.dart';

import '../models/course.dart';

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  const CourseDetailsScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Course Details')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.menu_book, size: 60),
            const SizedBox(height: 20),

            Text(
              course.name,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            Text(
              'Duration: ${course.duration}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),

            Text(
              'Status: ${course.status}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            const Text(
              'Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Text(course.description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
