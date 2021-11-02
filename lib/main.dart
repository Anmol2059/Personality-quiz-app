import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
//import './question.dart';
//import './answer.dart';

void main() {
  runApp(AnmolApp());
}

class AnmolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnmolAppState();
  }
}

class _AnmolAppState extends State<AnmolApp> {
  final _questions = const [
    {
      'questionText': 'what is your fav colour? ',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Pink', 'score': 2},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'what is your fav animal? ',
      'answers': [
        {'text': 'Deer', 'score': 10},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Tiger', 'score': 2},
        {'text': 'Lion', 'score': 1}
      ],
    },
    {
      'questionText': 'Who is your Best Instructor? ',
      'answers': [
        {'text': 'Anmol', 'score': 10},
        {'text': 'Ankit', 'score': 5},
        {'text': 'Rudra', 'score': 2},
        {'text': 'Sarita', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    }); //setStatefunction vitra arko ek line function create gareko

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //var questions
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore), //body children
      ), //scaffold
    ); //return
  } //widget
} //class
