import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/result_page.dart';

class SelectionButton extends StatelessWidget {
  const SelectionButton(this.buttonName, this.selectedButton, {super.key});

  final String buttonName;
  final int selectedButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(userChoice: selectedButton,),
            ),
          );
        },
        child: Text(
          buttonName,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
