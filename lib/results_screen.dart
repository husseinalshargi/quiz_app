import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chooseAnswers,
    required this.onRestart,
    required this.onBack,
  });

  final List<String> chooseAnswers;

  final void Function() onRestart;
  final void Function() onBack;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chooseAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length; //filter the list (return a new list not like map)

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You Have Answerd $numQuestions Out of $numCorrectQuestions Questions Correctly!",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 195, 144, 204),
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            QuestionsSummary(summaryData),
            SizedBox(height: 40),
            TextButton.icon(
              onPressed: onRestart,
              icon: Icon(Icons.refresh),
              label: Text('Restart Quiz!'),
              style: TextButton.styleFrom(foregroundColor: Colors.white),
            ),
            TextButton.icon(
              onPressed: onBack,
              icon: Icon(Icons.turn_left_outlined),
              label: Text('Back to Main Page'),
              style: TextButton.styleFrom(foregroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
