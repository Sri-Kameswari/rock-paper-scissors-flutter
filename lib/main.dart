import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/home_page.dart';
import 'package:rock_paper_scissors/user_selection_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
