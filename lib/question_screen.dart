import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenstate();
  }
}

class _QuestionScreenstate extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Text('QuestionScreen');
  }
}
