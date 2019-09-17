import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'what\'s your favorite Color?',
      'answers': [
        {'text':'Black', 'score':10},
        {'text':'Red', 'score':20},
        {'text':'Green', 'score':5},
        {'text':'Blue', 'score':7},

      ],
    },
    {
      'questionText': 'what\'s your favorite Animal?',
      'answers': [
        {'text':'Cheeta', 'score':10},{'text':'Tiger', 'score':10},{'text':'Lion', 'score':7},{'text':'Zebra', 'score':5},

      ],
    },
    {
      'questionText': 'what\'s your favorite Place?',
      'answers': [
        {'text':'Rajastan', 'score':5},{'text':'Kerala', 'score':10},{'text':'Tamilnadu', 'score':20},{'text':'Karnataka', 'score':7},
      ],
    },
  ];
  var _totalScore=0;

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });

  }


  void _answerQuestion(int score) {
    _totalScore = _totalScore+score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more text');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            'Quiz App',
            textAlign: TextAlign.center,
          ),
          elevation: 1.0,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion,questionIndex: _questionIndex,questions: _questions,)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
