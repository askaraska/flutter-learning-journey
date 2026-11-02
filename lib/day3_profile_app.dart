import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController professionController = TextEditingController();

  String userName = '';
  String userProfession = '';
  bool profileSubmitted = false;

  void submitProfile() {
    String enteredName = nameController.text.trim();
    String enteredProfession = professionController.text.trim();

    if (enteredName.isEmpty || enteredProfession.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in both fields!')),
      );
      return;
    }

    setState(() {
      userName = enteredName;
      userProfession = enteredProfession;
      profileSubmitted = true;

      // Clear input fields after successful submission.
      nameController.clear();
      professionController.clear();
    });
  }

  void clearProfile() {
    setState(() {
      nameController.clear();
      professionController.clear();

      userName = '';
      userProfession = '';
      profileSubmitted = false;
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    professionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile App'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Create Your Profile',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Your Name',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: professionController,
              decoration: const InputDecoration(
                labelText: 'Your Profession',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: submitProfile,
              child: const Text('Submit Profile'),
            ),

            OutlinedButton(onPressed: clearProfile, child: const Text('Clear')),

            const SizedBox(height: 25),

            if (profileSubmitted) ...[
              const Divider(),

              const Text(
                'Your Profile',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              Text('Name: $userName', style: const TextStyle(fontSize: 18)),

              const SizedBox(height: 10),

              Text(
                'Profession: $userProfession',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
