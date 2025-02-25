import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/selection-button.dart';

class UserSelectionPage extends StatelessWidget {
  const UserSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(100, 125, 248, 255),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'What\'s your choice?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            SelectionButton('Rock', 0),
            const SizedBox(height: 20),
            SelectionButton('Paper', 1),
            const SizedBox(height: 20),
            SelectionButton('Scissors', 2),
          ],
        ),
      ),
    );
  }
}
