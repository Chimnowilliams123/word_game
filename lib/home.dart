import 'package:flutter/material.dart';
import 'package:word_game/widgets/score_display.dart';
import 'package:word_game/widgets/word_options.dart';

import 'models/word_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Question> _questions = [
    const Question(
      correctAnswer: 'Apple,',
      options: ['Apple', 'Banana', 'Cherry', 'orange'],
    ),
  ];
  final int _currentQuestionIndex = 0;
  final int _score = 0;

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _questions[_currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word Game'),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScoreDisplay(score: _score),
            const SizedBox(height: 32),
            const Text(
              'Guess the word',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            WordOptions(
              question: currentQuestion,
              onSelect: (String option) {},
            ),
          ],
        ),
      ),
    );
  }
}
