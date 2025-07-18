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
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize:16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            ),
        
            const SizedBox(height: 20),
            ...currentQuestion.getshuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {},
              );
            }),
          ],
        ),
      ),
    ); // Replace with your desired widget
  }
}
