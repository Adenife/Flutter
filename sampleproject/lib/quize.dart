import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int question_index;
  final Function answer_question;

  Quize(
      {@required this.questions,
      @required this.answer_question,
      @required this.question_index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[question_index]['questionIndex'],
        ),
        ...(questions[question_index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answer_question(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
