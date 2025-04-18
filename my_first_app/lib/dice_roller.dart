import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
   return _DiceRollerState();
      
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var activeDiceimage = "assets/images/dice-images/dice-5.png";

   void rollDice() {
    var dicRole = Random().nextInt(6)+1; 
    setState(() {
      activeDiceimage="assets/images/dice-images/dice-$dicRole.png";
      
    });
   }
  @override
  Widget build(context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                activeDiceimage,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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