import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

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
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'what\'s your favorite Color?',
        'answers': [
          'Black',
          'Red',
          'Green',
          'Blue',
        ],
      },
      {
        'questionText': 'what\'s your favorite Animal?',
        'answers': [
          'Cheeta',
          'Tiger',
          'Lion',
          'Zebra',
        ],
      },
      {
        'questionText': 'what\'s your favorite Place?',
        'answers': [
          'Karnataka',
          'Tamilnadu',
          'Rajastan',
          'Kerala',
        ],
      },
    ];
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
        body: Column(
          children:[
           Question(
             questions[_questionIndex]['questionText'],
           ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
              return Answer(_answerQuestion,answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
