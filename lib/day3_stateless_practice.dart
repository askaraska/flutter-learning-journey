import 'package:flutter/material.dart';

void main() {
  runApp(const StatelessPracticeApp());
}

class StatelessPracticeApp extends StatelessWidget {
  const StatelessPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('StatelessWidget Practice')),
        body: const Center(
          child: Text('Welcome to Flutter!', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
