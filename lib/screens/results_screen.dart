import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:questions_app/data/questions.dart';
import 'package:questions_app/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  final void Function() onRestart;

  const ResultsScreen({
    super.key,
    required this.selectedAnswers,
    required this.onRestart,
  });

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].questionText,
        'correct-answer': questions[i].answers[0],
        'user-answer': selectedAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData
        .where((item) =>
            item['user-answer'] == item['correct-answer'] ? true : false)
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'You answered $numCorrectQuestion out of $numTotalQuestion questions correctly',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          QuestionSummary(summaryData: summaryData),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: onRestart,
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.refresh),
            label: const Text('Restart quiz'),
          )
        ]),
      ),
    );
  }
}
