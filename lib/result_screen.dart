import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/styled_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

  // List<Map<String, Object>> getSummaryData() {
  //   final List<Map<String, Object>> summary = [];

  //   return getSummaryData();
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const StyledText(
                'You have answered.... with right... and false...'),
            const SizedBox(height: 30),
            const StyledText('Answer List'),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                  //padding: const EdgeInsets.only(top: 28),
                  backgroundColor: const Color.fromARGB(255, 65, 147, 255),
                  foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_forward_rounded),
              label: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
