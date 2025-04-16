import "package:flutter/material.dart";
import "package:my_first_app/graident_container.dart";


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,

        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 13, 7, 134),
                Color.fromARGB(243, 18, 0, 26),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: GradientContainer(),
          ),
          
        ),
        ),
      ),
    );
}



