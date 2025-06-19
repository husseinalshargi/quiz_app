import 'package:flutter/material.dart';
import 'package:quiz_app/style_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  }); //pass the key to the extendet class, should have const


  @override
  Widget build(context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
              color: const Color.fromARGB(150, 255, 255, 255), //to make it transparent by altering image's color
            ),
            const SizedBox(height: 60),
            const StyledText('Learn Flutter the Fun Way!'),
            const SizedBox(height: 35),
            OutlinedButton.icon(
              //if icon then child will turn to label
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                //give a style to the button
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            ),
          ],
        ),
      );
  }
}
