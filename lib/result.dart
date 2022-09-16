import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Good Score';
    } else if(resultScore <=12) {
      resultText = 'Cool Score';
    } else if(resultScore <= 16) {
      resultText = 'Meh Score';
    } else {
      resultText = 'Bad Score';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
