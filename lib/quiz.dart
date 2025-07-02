import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/models/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';
  int finalScore = 0;

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void showResult(int score) {
    setState(() {
      finalScore = score;
      activeScreen = 'result-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      activeScreen = 'start-screen';
      finalScore = 0;
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget;
    if (activeScreen == 'start-screen') {
      screenWidget = StartScreen(switchScreen);
    } else if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(onQuizEnd: showResult);
    } else {
      screenWidget = ResultScreen(
        score: finalScore,
        total: questions.length,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 85, 52, 143),
                Color.fromARGB(255, 52, 4, 116),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}