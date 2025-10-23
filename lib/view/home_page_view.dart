import 'package:flutter/material.dart';

import '../day-1/day_1_page.dart';
import '../partices/day_2_page.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});
  final List<String> practiceDays = const [
    "Day 1: Basic Widgets",
    "Day 2: Layouts",
    "Day 3: State Management",
    "Day 4: Navigation",
    "Day 5: APIs",
    "Day 6: Firebase",
    "Day 7: Authentication",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Practice Journey"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: practiceDays.length,
        itemBuilder: (context, index) {
          final day = practiceDays[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                child: Text((index + 1).toString()),
              ),
              title: Text(day),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // এইখানে আসল কাজটি হবে
                navigateToPage(context, index);
              },
            ),
          );
        },
      ),
    );
  }

  void navigateToPage(BuildContext context, int index) {
    Widget page;

    switch (index) {
      case 0:
        page = const Day1Page();
        break;
      case 1:
        page = const Day2Page();
        break;
      // case 2:
      //   page = const Day3Page();
      //   break;
      default:
        page = Scaffold(
          appBar: AppBar(
            title: Text(practiceDays[index]),
            backgroundColor: Colors.grey,
          ),
          body: const Center(child: Text("এই পেজটি এখনো তৈরি হয়নি।")),
        );
        break;
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
