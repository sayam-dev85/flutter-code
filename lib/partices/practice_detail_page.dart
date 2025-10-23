import 'package:flutter/material.dart';

class PracticeDetailPage extends StatelessWidget {
  final String dayTitle;

  const PracticeDetailPage({super.key, required this.dayTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dayTitle),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to $dayTitle!",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "এখানে আপনার আজকের প্র্যাকটিসের সমস্ত উইজেট থাকবে।",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // হোম পেজে ফিরে যাওয়ার জন্য
                },
                child: const Text("Go Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
