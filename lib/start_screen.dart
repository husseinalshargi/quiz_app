import 'package:flutter/material.dart';
import 'package:quiz_app/style_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
    required this.colors,
  }); //pass the key to the extendet class, should have const
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 250),
            SizedBox(height: 60),
            const StyledText('Learn Flutter the Fun Way!'),
            SizedBox(height: 35),
            ElevatedButton(
              onPressed: null,
              child: Text('Start Quiz', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
