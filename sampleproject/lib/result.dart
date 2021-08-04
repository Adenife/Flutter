import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result_score;
  final Function reset_quize;

  Result(this.result_score, this.reset_quize);

  String get resultPhrase {
    String resultText;
    if (result_score <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (result_score <= 12) {
      resultText = 'Pretty Likeable';
    } else if (result_score <= 16) {
      resultText = 'You are ... Strange';
    } else {
      resultText = 'You are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: reset_quize,
          child: Text('Restart'),
          textColor: Colors.yellow.shade900,
        )
      ],
    ));
  }
}
