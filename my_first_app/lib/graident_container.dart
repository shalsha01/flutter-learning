
import 'package:flutter/material.dart';
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
      child: Center(
        child:Column(children:[Image.asset(
          "assets/images/dice-images/dice-3.png",
          width: 200,
          fit: BoxFit.cover,
        ),
        TextButton(onPressed:(){}, child:const Text("ROLL THE DICE",style: TextStyle(color: Colors.white),),),
        ]),
      ),
    );
  }
}


