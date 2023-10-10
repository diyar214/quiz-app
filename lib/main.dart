import 'package:flutter/material.dart';
import 'package:questions_app/quiz.dart';

void main() => runApp(const LandingPage());

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
