import 'package:flutter/material.dart';

import '../models/course.dart';
import '../widgets/course_card.dart';

class CoursesScreen extends StatelessWidget {
  final List<Course> courses;
  final ValueChanged<Course> onCourseTap;

  const CoursesScreen({
    super.key,
    required this.courses,
    required this.onCourseTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Courses')),
      body: courses.isEmpty
          ? const Center(child: Text('No courses available. Add a course!'))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];

                return CourseCard(
                  course: course,
                  onTap: () {
                    onCourseTap(course);
                  },
                );
              },
            ),
    );
  }
}
