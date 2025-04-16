
import 'package:flutter/material.dart';
import 'package:my_first_app/styled_text.dart';
var startalignment = Alignment.topLeft;
var endalignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key,required this.colors});
  final List<Color> colors;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:colors,
          begin:startalignment,
          end: endalignment,
        ),
      ),
      child:Image.asset(
        "assets/images/dice-images/dice-1.png",width: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}


