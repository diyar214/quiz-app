import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  const ResultsScreen({super.key, required this.selectedAnswers});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('You answered X out of Y questions correctly'),
          const SizedBox(height: 30),
          const Text('Data'),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            label: const Text('Restart quiz'),
          )
        ]),
      ),
    );
  }
}
