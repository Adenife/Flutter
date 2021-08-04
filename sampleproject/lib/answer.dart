import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answer_question;
  final String answer_text;

  Answer(this.answer_question, this.answer_text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue.shade900,
        child: Text(answer_text),
        onPressed: answer_question,
      ),
    );
  }
}
