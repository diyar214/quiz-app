import 'package:flutter/material.dart';
import 'package:questions_app/start_page.dart';

void main() => runApp(const LandingPage());

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 137, 71, 250),
              Color.fromARGB(255, 182, 139, 255)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: const StartPage(),
        ),
      ),
    );
  }
}
