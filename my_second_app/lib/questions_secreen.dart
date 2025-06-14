import 'package:flutter/material.dart';
import 'package:my_second_app/answer_button.dart';
import 'package:my_second_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {

    final currentQuestion = questions[0]; // Assuming you want to display the first question

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize:16,
            fontWeight: FontWeight.bold,
          ),
          ),

          const SizedBox(height: 20),
          AnswerButton(
            answerText:currentQuestion.answers[0],
            onTap: () {},
          ),
          AnswerButton(
            answerText:currentQuestion.answers[1],
            onTap: () {},
          ),
          AnswerButton(
            answerText:currentQuestion.answers[2],
            onTap: () {},
          ),
          AnswerButton(
            answerText:currentQuestion.answers[3],
            onTap: () {},
          ),
        ],
      ),
    ); // Replace with your desired widget
  }
}
