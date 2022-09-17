import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Good Score';
    } else if (resultScore <= 12) {
      resultText = 'Cool Score';
    } else if (resultScore <= 16) {
      resultText = 'Meh Score';
    } else {
      resultText = 'Bad Score';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: resetHandler,
              child: Text('Restart Quiz!'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue),
              ))
        ],
      ),
    );
  }
}
