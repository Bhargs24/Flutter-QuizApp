import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration:const BoxDecoration(gradient: LinearGradient(
          colors: [
             Color.fromARGB(255, 85, 52, 143),
            Color.fromARGB(255, 52, 4, 116),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          ),
  ),
          child: const StartScreen()),   
  ),
  ),
  );
}

