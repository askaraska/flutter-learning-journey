import 'package:flutter/material.dart';

void main() {
  List<String> tasks = [
    'Learn Dart',
    'Practice Flutter',
    'Build a Flutter app',
  ];

  debugPrint('MY TASK LIST');
  debugPrint('------------');

  for (int i = 0; i < tasks.length; i++) {
    debugPrint('${i + 1}. ${tasks[i]}');
  }

  debugPrint('------------');
  debugPrint('Total tasks: ${tasks.length}');

  bool hasTasks = tasks.isNotEmpty;

  if (hasTasks) {
    debugPrint('You have tasks to complete.');
  } else {
    debugPrint('Your task list is empty.');
  }
}
