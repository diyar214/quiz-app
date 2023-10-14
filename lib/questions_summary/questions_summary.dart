import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Row(
                    children: [
                      Text('${(data['question-index'] as int) + 1}'),
                      Expanded(
                        child: Column(
                          children: [
                            Text(data['question'] as String),
                            const SizedBox(height: 10),
                            Text(data['user-answer'] as String),
                            Text(data['correct-answer'] as String),
                          ],
                        ),
                      ),
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
