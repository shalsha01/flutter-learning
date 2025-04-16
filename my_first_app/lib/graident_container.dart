
import 'package:flutter/material.dart';
import 'package:my_first_app/styled_text.dart';
var startalignment = Alignment.topLeft;
var endalignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(113, 145, 139, 255),
            Color.fromARGB(161, 221, 216, 223),
          ],
          begin:startalignment,
          end: endalignment,
        ),
      ),
      child: const Mystyle(),
    );
  }
}


