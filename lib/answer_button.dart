import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function()? onPressed;
  const AnswerButton(
      {super.key, required this.answerText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 34),
          backgroundColor: const Color.fromARGB(190, 32, 1, 95),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
