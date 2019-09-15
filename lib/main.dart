import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        body: Text('This is body'),
      ),
    );
  }
}
