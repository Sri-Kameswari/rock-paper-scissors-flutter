import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/user_selection_page.dart';

import 'home_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.userChoice});

  final int userChoice;

  @override
  Widget build(BuildContext context) {

    final computerChoice = Random().nextInt(3);
    var result = '';

    //logic: rock - 0, paper - 1, scissors - 2
    List<String> choices = ['Rock', 'Paper', 'Scissors'];

    if(userChoice == 0){
      if(computerChoice == 0) result = 'Tied';
      else if(computerChoice == 1) result = 'Lost';
      else result = 'Won';
    }

    else if(userChoice == 1){
      if(computerChoice == 0) result = 'Won';
      else if(computerChoice == 1) result = 'Tied';
      else result = 'Lost';
    }

    else if(userChoice == 2){
      if(computerChoice == 0) result = 'Lost';
      else if(computerChoice == 1) result = 'Won';
      else result = 'Tied';
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(100, 125, 248, 255),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Computer chose: ${choices[computerChoice]}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 15,),
            Text(
              'You chose: ${choices[userChoice]}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 15,),
            Text(
              'You $result!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserSelectionPage(),
                  ),
                );
              },
              child: Text(
                'Wanna play again?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text(
                'Return to home page',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
