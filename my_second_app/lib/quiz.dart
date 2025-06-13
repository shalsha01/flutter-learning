import 'package:flutter/material.dart';
import 'package:my_second_app/start_screen.dart';
import 'package:my_second_app/questions_secreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
   Widget screenWidget= StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget =QuestionsScreen();
    }
    screenWidget =QuestionsScreen();


    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF0A1C40), Colors.black],
            ),
          ),
          child:screenWidget,
        ),
      ),
    );
  }
}
