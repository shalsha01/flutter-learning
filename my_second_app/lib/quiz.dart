import 'package:flutter/material.dart';
import 'package:my_second_app/start_screen.dart';

class Quiz extends StatefulWidget {
   const Quiz({super.key});
  @override
  State<Quiz> createState() {
return _QuizState();
  }
}

class  _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
      body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF0A1C40),
            Colors.black,
          ],
        ),
      ),
      child: const StartScreen(
      ),
      ),
      ),
      );
  }
}
