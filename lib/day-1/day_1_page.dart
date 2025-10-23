import 'package:flutter/material.dart';

class Day1Page extends StatelessWidget {
  const Day1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 1: Basic Widgets"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      body: const Center(
        child: Text(
          'Hello Flutter',
          style: TextStyle(
            fontSize: 25,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
