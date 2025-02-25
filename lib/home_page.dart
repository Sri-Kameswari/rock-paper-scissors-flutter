import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/user_selection_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(100, 125, 248, 255),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Play rock, paper, scissors!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('lib/assets/images/RPS.jpg'),
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserSelectionPage(),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blueGrey,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start!'),
            ),
          ],
        ),
      ),
    );
  }
}
