import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    currentDiceRoll = randomizer.nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/images/dice-images/dice-$currentDiceRoll.png",
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            "ROLL THE DICE",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
