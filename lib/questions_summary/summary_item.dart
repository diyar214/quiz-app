import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:questions_app/questions_summary/question_identifier.dart';

class SummaryItems extends StatelessWidget {
  final Map<String, Object> itemData;

  const SummaryItems({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user-answer'] == itemData['correct-answer'] ? true : false;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question-index'] as int),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(itemData['user-answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 202, 171, 252),
                  )),
              Text(itemData['correct-answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 254, 246),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
