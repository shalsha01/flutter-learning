import 'package:flutter/material.dart';
import 'package:my_second_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
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
      ),),
  );
}
