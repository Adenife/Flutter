import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quize.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());
//Using arrow function to make code cleaner

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    // throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionIndex': 'What is my name?',
      'answers': [
        {'text': 'Nifemi', 'score': 4},
        {'text': 'Adeola', 'score': 8},
        {'text': 'Seyitan', 'score': 10},
        {'text': 'Aweda', 'score': 1},
      ]
    },
    {
      'questionIndex': 'What is my favourite color?',
      'answers': [
        {'text': 'Blue', 'score': 4},
        {'text': 'Green', 'score': 1},
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 8},
      ]
    },
    {
      'questionIndex': 'What is my favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 10},
        {'text': 'Antelope', 'score': 8},
        {'text': 'Deer', 'score': 10},
      ]
    },
  ];

  var _question_index = 0;
  var _total_score = 0;

  void _resetQuiz() {
    setState(() {
      _question_index = 0;
      _total_score = 0;
    });
  }

  void _answerQuestion(int score) {
    _total_score += score;

    setState(() {
      _question_index = _question_index + 1;
    });
    print(_question_index);
    if (_question_index < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _question_index < _questions.length
            ? Quize(
                answer_question: _answerQuestion,
                question_index: _question_index,
                questions: _questions,
              )
            : Result(_total_score, _resetQuiz),
      ),
    );
  }
}
