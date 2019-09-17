import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function resetHandler;
  Result(this.resultScore,this.resetHandler,);


  String get resultPhrse {
    var resulText = 'You Did it';
    if (resultScore <= 0) {
      resulText = "You are innocent";
    } else if (resultScore <= 20) {
      resulText = "You are likeble";
    } else if (resultScore <= 25) {
      resulText = "You are strange";
    } else {
      resulText = "You are Good";
    }
    return resulText;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrse,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        FlatButton(child: Text('Restart Quiz',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent)),onPressed: resetHandler,),
      ],
    ));
  }
}
