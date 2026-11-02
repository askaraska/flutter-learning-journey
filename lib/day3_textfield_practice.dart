import 'package:flutter/material.dart';

void main() {
  runApp(const TextFieldPracticeApp());
}

class TextFieldPracticeApp extends StatelessWidget {
  const TextFieldPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NameInputScreen(),
    );
  }
}

class NameInputScreen extends StatefulWidget {
  const NameInputScreen({super.key});

  @override
  State<NameInputScreen> createState() {
    return _NameInputScreenState();
  }
}

class _NameInputScreenState extends State<NameInputScreen> {
  final TextEditingController nameController = TextEditingController();

  String message = 'Enter your name above';

  void submitName() {
    setState(() {
      String enteredName = nameController.text.trim();

      if (enteredName.isEmpty) {
        message = 'Please enter your name!';
      } else {
        message = 'Welcome, $enteredName!';
      }
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Practice'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                hintText: 'Your name here',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(onPressed: submitName, child: const Text('Submit')),

            const SizedBox(height: 25),

            Text(
              message,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
