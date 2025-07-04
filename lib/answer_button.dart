import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 68, 5, 196),
        foregroundColor: Colors.white, //text color
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), //how the buttons are
        padding: const EdgeInsets.symmetric(horizontal:  40, vertical:  10),
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
