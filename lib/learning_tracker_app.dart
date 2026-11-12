import 'package:flutter/material.dart';

import 'models/course.dart';
import 'screens/home_screen.dart';
import 'screens/courses_screen.dart';
import 'screens/add_course_screen.dart';
import 'screens/course_details_screen.dart';

class LearningTrackerApp extends StatefulWidget {
  const LearningTrackerApp({super.key});

  @override
  State<LearningTrackerApp> createState() => _LearningTrackerAppState();
}

class _LearningTrackerAppState extends State<LearningTrackerApp> {
  final List<Course> courses = [
    const Course(
      name: 'Python',
      duration: '30 Days',
      status: 'Completed',
      description: 'Python programming fundamentals',
    ),
    const Course(
      name: 'Flutter',
      duration: '5 Days',
      status: 'In Progress',
      description: 'Mobile app development',
    ),
    const Course(
      name: 'FastAPI',
      duration: '10 Days',
      status: 'Completed',
      description: 'Python backend development',
    ),
  ];

  // Receive a Course object and add it to the list.
  void _addCourse(Course course) {
    setState(() {
      courses.add(course);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: Builder(
        builder: (homeContext) {
          return HomeScreen(
            onViewCourses: () {
              Navigator.push(
                homeContext,
                MaterialPageRoute(
                  builder: (context) => CoursesScreen(
                    courses: courses,
                    onCourseTap: (course) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CourseDetailsScreen(course: course),
                        ),
                      );
                    },
                  ),
                ),
              );
            },

            onAddCourse: () {
              Navigator.push(
                homeContext,
                MaterialPageRoute(
                  builder: (context) =>
                      AddCourseScreen(onAddCourse: _addCourse),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
