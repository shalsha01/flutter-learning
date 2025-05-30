import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.startQuiz,{super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
	return Center(
    child: Column(
      mainAxisSize:MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
           width: 300,
           color:const Color.fromARGB(255, 255, 255, 255),
           ),
         const SizedBox(height: 80),
        Text("learn flutter the fun way!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: const BorderSide(color: Colors.white, width: 2),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            textStyle: const TextStyle(fontSize: 18),
            ),
            child: const Text("Start Quiz"),)
      ],
    ),
	  );
	
  }
}