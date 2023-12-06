import 'package:flutter/material.dart';

import 'package:flutter_quiz_application/styled_text.dart';

class FlutterQuiz extends StatelessWidget {
  const FlutterQuiz(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(197, 0, 255, 149),
            width: 250,
          ),
          const SizedBox(
            height: 15,
          ),
          const StyledText('Learn Flutter in Fun Way'),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 28),
                backgroundColor: const Color.fromARGB(255, 65, 147, 255),
                foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_forward_rounded),
            label: const Text('Start'),
          ),
        ],
      ),
    );
  }
}
