import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  final void Function() startQuiz;
  const StartPage(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    const String logoImg = 'assets/images/quiz-logo.png';
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            logoImg,
            color: const Color.fromARGB(150, 255, 255, 255),
            width: 300,
          ),
          const SizedBox(height: 34),
          const Text(
            'Learn flutter in the fun way!!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 16),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
            icon: const Icon(
              Icons.arrow_forward,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
