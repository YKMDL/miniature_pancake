import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/answer_button.dart';
import 'package:flutter_quiz_application/styled_text.dart';
import 'package:flutter_quiz_application/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _FlutterQuizScreen();
  }
}

class _FlutterQuizScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestions(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(
      () {
        currentQuestionIndex++;
      },
    );
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(currentQuestion.text),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswer().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestions(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

//  Color.fromARGB(218, 32, 166, 255),
//   Color.fromARGB(255, 168, 3, 201),
//   Color.fromARGB(218, 32, 166, 255)
