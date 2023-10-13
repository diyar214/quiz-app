import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:questions_app/answer_button.dart';
import 'package:questions_app/data/questions.dart';

class QuestionsPage extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;
  const QuestionsPage({super.key, required this.onSelectAnswer});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  int index = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[index];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.questionText,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 249, 224, 255),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) =>
                AnswerButton(
                    answerText: answer,
                    onPressed: () => answerQuestion(answer))),
          ],
        ),
      ),
    );
  }
}
