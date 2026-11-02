import 'package:flutter/material.dart';

void main() {
  runApp(const DynamicTextApp());
}

class DynamicTextApp extends StatelessWidget {
  const DynamicTextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DynamicTextScreen(),
    );
  }
}

class DynamicTextScreen extends StatefulWidget {
  const DynamicTextScreen({super.key});

  @override
  State<DynamicTextScreen> createState() {
    return _DynamicTextScreenState();
  }
}

class _DynamicTextScreenState extends State<DynamicTextScreen> {
  String message = 'Hello, Flutter!';

  void changeMessage() {
    setState(() {
      message = 'I am learning Flutter!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Text Practice'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'My Welcome App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 25),

            Text(
              message,
              style: const TextStyle(fontSize: 26, color: Colors.blue),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: changeMessage,
              child: const Text('Change Message'),
            ),
          ],
        ),
      ),
    );
  }
}
