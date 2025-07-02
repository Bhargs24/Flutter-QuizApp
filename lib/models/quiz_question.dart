import 'package:quiz_app/quiz.dart';

class QuizQuestion{

QuizQuestion({
  required this.question,
  required this.answers,
  required this.correctAnswerIndex,
});
final String question;
final List<String> answers;
final int correctAnswerIndex;




}