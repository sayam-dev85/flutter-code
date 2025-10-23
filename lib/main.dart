import 'package:demoflutter/view/home_page_view.dart'; // আপনার HomePageView ফাইলটি ইমপোর্ট করুন
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageView(), // HomePageView-কে হোম পেজ হিসেবে সেট করুন
    );
  }
}
