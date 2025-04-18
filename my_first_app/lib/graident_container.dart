import 'package:flutter/material.dart';
import 'package:my_first_app/dice_roller.dart';


var startalignment = Alignment.topLeft;
var endalignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
   const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {


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
        child:DiceRoller(),
        
      ),
    );
  }
}
