import 'package:flutter/material.dart';
import 'dart:developer';

var startalignment = Alignment.topLeft;
var endalignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
   const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
var activeDiceimage = "assets/images/dice-images/dice-1.png";

   void rollDice() {
    log("Dice rolled");
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colors,
          begin: startalignment,
          end: endalignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                "assets/images/dice-images/dice-4.png",
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed:rollDice,
              child: const Text(
                "ROLL THE DICE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
