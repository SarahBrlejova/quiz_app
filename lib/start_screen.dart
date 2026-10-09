import 'package:flutter/material.dart';

import 'package:quiz_app/models/answer_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Zvieratá',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 30),
          AnswerButton(answerText: 'Spustiť kvíz', onTap: startQuiz),
        ],
      ),
    );
  }
}
