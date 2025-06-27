import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300, height: 300,
          color: const Color.fromARGB(148, 255, 255, 255),
          ),
          const SizedBox(height: 60),
          const Text(
            'Welcome to my quiz app!',
            style: TextStyle(
              color: Color.fromARGB(255, 218, 138, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 85, 52, 143),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: Icon(Icons.arrow_right_rounded,size: 30),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}