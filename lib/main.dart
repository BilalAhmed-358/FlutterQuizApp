import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionindex = 0;
  final questions = const [
    {
      'questionText': "What's your favorite color?",
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': "What's your favorite animal",
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': "Who's your favorite instructor",
      'answers': ['Max', 'Angela', 'Colt', 'Harry'],
    },
  ];
  void _answerQuestion() {
    setState(() {
      _questionindex++;
    });
    print(_questionindex);
  }

  void _resetQuiz() {
    setState(() {
      _questionindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first Quiz App"),
        ),
        body: _questionindex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionindex,
                questions: questions,
              )
            : Result(_resetQuiz),
      ),
    );
  }
}
