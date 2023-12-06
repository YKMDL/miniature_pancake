import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/data/questions.dart';
import 'package:flutter_quiz_application/quiz_mainhome.dart';
import 'package:flutter_quiz_application/questions_screen.dart';
import 'package:flutter_quiz_application/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _FlutterQuiz();
  }
}

class _FlutterQuiz extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void choosenAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = FlutterQuiz(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: choosenAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(
        chosenAnswer: selectedAnswer,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(218, 32, 166, 255),
                Color.fromARGB(255, 16, 3, 201),
                Color.fromARGB(218, 32, 166, 255)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
