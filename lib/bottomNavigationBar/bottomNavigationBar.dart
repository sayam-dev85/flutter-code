import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BottomNavView());
  }
}

class BottomNavView extends StatelessWidget {
  const BottomNavView({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar Design here
      appBar: AppBar(
        title: Text(
          'Bottom Navbar Design',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.cyanAccent,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        currentIndex: 0,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_front),
            label: 'video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notification',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],

        onTap: (int index) {
          if (index == 0) {
            MySnackBar('Home page view', context);
          } else if (index == 1) {
            MySnackBar('Video page view', context);
          } else if (index == 2) {
            MySnackBar('Notification page view', context);
          } else if (index == 3) {
            MySnackBar('Profile page view', context);
          }
        },
      ),
    );
  }
}
