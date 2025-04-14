import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 36, 7, 122),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.amber]
                    )
            ),
          child: const Center(
              child: Text("hello shahad")
              ),
        )
        ),
    ),
  );
}
