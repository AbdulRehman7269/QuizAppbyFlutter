// import 'package:flutter/material.dart';
// import './answer.dart';
// import './question.dart';
// class Quiz extends StatelessWidget {
//   final List<Map<String,  Object>>questionList;
//   final int questionIndex;
//   final VoidCallback printAnswer;
//
//   Quiz({
//     required this.questionIndex,
//     required this.questionList,
//     required this.printAnswer,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Question(
//             questionList[questionIndex]['questionText'] as String
//         ),
//         ...(questionList[questionIndex]['answers'] as List<Map<String, Object>>)
//             .map((answer) {
//           return Answer(() => printAnswer(answer['score']), answer['text'] as String);
//
//         }).toList()
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}