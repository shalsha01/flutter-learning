import "package:flutter/material.dart";
import "package:my_first_app/graident_container.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 36, 7, 122),
        body: GradientContainer(),
        ),
      ),
    );
}



