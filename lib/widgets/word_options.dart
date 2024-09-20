import 'package:flutter/material.dart';

import '../models/word_model.dart';

class WordOptions extends StatelessWidget {
  final Question question;
  final Function(String) onSelect;

  const WordOptions({
    super.key,
    required this.question,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: question.options.map(
          (e) {
            return Text(
              e,
              style: const TextStyle(fontSize: 20),
            );
          },
        ).toList(),
      ),
    );
  }
}
