import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(
    this.startQuiz, { //to pass a function
    super.key,
  }); //pass the key to the extendet class, should have const

  final void Function()
  startQuiz; //must be in this form when taking a function from the constructor, void -> type
  //must run it inside lambda of a button press

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(
              150,
              255,
              255,
              255,
            ), //to make it transparent by altering image's color
          ),
          const SizedBox(height: 60),
          Text(
            'Learn Flutter the Fun Way',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 220, 180, 231),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 35),
          OutlinedButton.icon(
            //if icon then child will turn to label
            onPressed: () {
              startQuiz();
            },
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
