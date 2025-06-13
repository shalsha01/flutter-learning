import 'package:flutter/material.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The questions .....' ,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, 
          child: const Text('Answer 1')
          ),
           ElevatedButton(onPressed: () {}, 
          child: const Text('Answer 2')
          ),
           ElevatedButton(onPressed: () {}, 
          child: const Text('Answer 3')
          ),
           ElevatedButton(onPressed: () {}, 
          child: const Text('Answer 4')
          ),
        ],
      ),
    ); // Replace with your desired widget
  }
}
