import 'package:flutter/material.dart';

class Mystyle extends StatelessWidget {
  const Mystyle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello, World!',
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}