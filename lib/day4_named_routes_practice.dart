import 'package:flutter/material.dart';

void main() {
  runApp(const NamedRoutesApp());
}

class NamedRoutesApp extends StatelessWidget {
  const NamedRoutesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // First screen
      initialRoute: '/',

      // Register named routes
      routes: {
        '/': (context) => const HomeScreen(),
        '/courses': (context) => const CoursesScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}

// HOME SCREEN
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.home, size: 70, color: Colors.blue),
            const SizedBox(height: 20),

            const Text(
              'Welcome to My Learning App!',
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/courses');
              },
              child: const Text('View Courses'),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Text('View Profile'),
            ),
          ],
        ),
      ),
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
        title: const Text('Courses'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.book, size: 70, color: Colors.green),

            const SizedBox(height: 20),

            const Text('Available Courses', style: TextStyle(fontSize: 24)),

            const SizedBox(height: 15),

            const Text('Python\nFlutter\nFastAPI'),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}

// PROFILE SCREEN
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 70, color: Colors.orange),

            const SizedBox(height: 20),

            const Text('My Profile', style: TextStyle(fontSize: 24)),

            const SizedBox(height: 10),

            const Text('Name: Sulthan'),
            const Text('Learning: Flutter Development'),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
