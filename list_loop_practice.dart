void main() {
  List<String> tasks = [
    'Learn Dart',
    'Practice Flutter',
    'Build a Flutter app',
  ];

  print('MY TASK LIST');
  print('------------');

  for (int i = 0; i < tasks.length; i++) {
    print('${i + 1}. ${tasks[i]}');
  }

  print('------------');
  print('Total tasks: ${tasks.length}');

  bool hasTasks = tasks.isNotEmpty;

  if (hasTasks) {
    print('You have tasks to complete.');
  } else {
    print('Your task list is empty.');
  }
}