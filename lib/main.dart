import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion(){
   print('Answer is answer');
  }
  @override
  Widget build(BuildContext context) {
    var questions =[
      'what\'s your favorite Color?',
      'what\'s your favorite Animal?',
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
          children: <Widget>[
            Text(questions.elementAt(0),),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: answerQuestion,
            ),

          ],
        )
      ),
    );
  }
}
