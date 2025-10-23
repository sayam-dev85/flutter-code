import 'package:flutter/material.dart';

class Day2Page extends StatelessWidget {
  const Day2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 2: Layouts"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("এটি Day 2 এর পেজ।", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.amber, size: 30),
                Icon(Icons.star, color: Colors.amber, size: 30),
                Icon(Icons.star, color: Colors.amber, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
