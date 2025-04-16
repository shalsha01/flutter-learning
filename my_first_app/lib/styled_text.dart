import 'package:flutter/material.dart';
var sayHello = "Hello,shahd!";
class Mystyle extends StatelessWidget {
  const Mystyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      sayHello,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}