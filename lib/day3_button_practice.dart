import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonPracticeApp());
}

class ButtonPracticeApp extends StatelessWidget {
  const ButtonPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Button Interaction Practice'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Explore Flutter Buttons',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 25),

              ElevatedButton(
                onPressed: () {
                  debugPrint('ElevatedButton clicked!');
                },
                child: const Text('Elevated Button'),
              ),

              const SizedBox(height: 15),

              TextButton(
                onPressed: () {
                  debugPrint('TextButton clicked!');
                },
                child: const Text('Text Button'),
              ),

              const SizedBox(height: 15),

              OutlinedButton(
                onPressed: () {
                  debugPrint('OutlinedButton clicked!');
                },
                child: const Text('Outlined Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
