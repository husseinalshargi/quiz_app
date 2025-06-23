import 'package:flutter/material.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //in order to make it using init
  //Widget? activeScreen;
  // Widget rather than var to use it by more than one widget

  // @override
  // void initState() {
  //  //provided by state class, execute only one time before the rendring (before build)
  //  super.initState();
  //  activeScreen = StartScreen(switchScreen);
  // }

  // to do it by a string
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      //activeScreen = const QuestionScreen();
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 45, 7, 98),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          //child: activeScreen,
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : activeScreen == 'question-screen'
              ? QuestionScreen(onSelectAnswer: chooseAnswer)
              : ResultsScreen(chooseAnswers: selectedAnswers),
        ),
      ),
    );
  }
}
