import 'package:flutter/material.dart';
import 'package:questions_app/data/questions.dart';
import 'package:questions_app/screens/questions_screen.dart';
import 'package:questions_app/screens/results_screen.dart';

import 'package:questions_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-src';

  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'ques-src';
    });
  }

  void setAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-src';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartPage(switchScreen);

    if (activeScreen == 'ques-src') {
      screenWidget = QuestionsPage(onSelectAnswer: setAnswer);
    }

    if (activeScreen == 'result-src') {
      screenWidget = ResultsScreen(selectedAnswers: selectedAnswers);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 91, 26, 202),
              Color.fromARGB(255, 131, 93, 197)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: screenWidget,
        ),
      ),
    );
  }
}
