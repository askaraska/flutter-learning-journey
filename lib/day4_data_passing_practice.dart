import 'package:flutter/material.dart';

void main() {
  runApp(const DataPassingApp());
}

class DataPassingApp extends StatelessWidget {
  const DataPassingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoursesScreen(),
    );
  }
}

// COURSES SCREEN
class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Courses'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select a Course',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CourseDetailsScreen(
                      courseName: 'Python',
                      duration: '30 Days',
                      status: 'Completed',
                    ),
                  ),
                );
              },
              child: const Text('Python'),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CourseDetailsScreen(
                      courseName: 'Flutter',
                      duration: '5 Days',
                      status: 'In Progress',
                    ),
                  ),
                );
              },
              child: const Text('Flutter'),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CourseDetailsScreen(
                      courseName: 'FastAPI',
                      duration: '10 Days',
                      status: 'Completed',
                    ),
                  ),
                );
              },
              child: const Text('FastAPI'),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

// COURSE DETAILS SCREEN
class CourseDetailsScreen extends StatelessWidget {
  final String courseName;
  final String duration;
  final String status;

  const CourseDetailsScreen({
    super.key,
    required this.courseName,
    required this.duration,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Details'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.school, size: 70, color: Colors.green),
            const SizedBox(height: 20),
            Text('Course: $courseName', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            Text('Duration: $duration', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Status: $status', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Courses'),
            ),
          ],
        ),
      ),
    );
  }
}
