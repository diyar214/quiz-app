import 'package:flutter/material.dart';

import 'package:questions_app/answer_button.dart';
import 'package:questions_app/data/questions.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  int index = 0;

  void answerQuestion() {
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
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((item) =>
                AnswerButton(answerText: item, onPressed: answerQuestion)),
          ],
        ),
      ),
    );
  }
}
