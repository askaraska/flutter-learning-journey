import 'package:flutter/material.dart';

void main() {
  runApp(const LearningDashboardApp());
}

class LearningDashboardApp extends StatelessWidget {
  const LearningDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final columns = screenWidth >= 900
        ? 3
        : screenWidth >= 600
        ? 2
        : 1;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Dashboard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Learning Dashboard'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome back!',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              const Text(
                'Keep learning and building every day.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // Learning summary
              const Text(
                'Your Progress',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(child: _summaryCard(Icons.menu_book, '8', 'Topics')),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _summaryCard(Icons.task_alt, '5', 'Completed'),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _summaryCard(
                      Icons.local_fire_department,
                      '3',
                      'Day Streak',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Quick actions
              const Text(
                'Quick Actions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Learn button pressed');
                    },
                    child: const Text('Learn'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Practice button pressed');
                    },
                    child: const Text('Practice'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Review button pressed');
                    },
                    child: const Text('Review'),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Responsive learning grid
              const Text(
                'Learning Topics',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              GridView.count(
                crossAxisCount: columns,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.15,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _topicCard(
                    Icons.phone_android,
                    'Mobile UI',
                    'Build Flutter screens',
                  ),
                  _topicCard(
                    Icons.view_column,
                    'Layouts',
                    'Learn Row and Column',
                  ),
                  _topicCard(
                    Icons.space_dashboard,
                    'Dashboard',
                    'Organize information',
                  ),
                  _topicCard(
                    Icons.widgets,
                    'Widgets',
                    'Understand reusable UI',
                  ),
                  _topicCard(
                    Icons.smartphone,
                    'Responsive UI',
                    'Adapt to screen sizes',
                  ),
                  _topicCard(
                    Icons.code,
                    'Dart Practice',
                    'Improve coding skills',
                  ),
                  _topicCard(Icons.school, 'Learning', 'Build your skills'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _summaryCard(IconData icon, String value, String label) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
        child: Column(
          children: [
            Icon(icon, color: Colors.blue, size: 26),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  Widget _topicCard(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: Colors.blue),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(subtitle, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
