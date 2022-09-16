import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

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
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText':'Whats your favorite color?',
        'answers':['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText':'Whats your favorite animal?',
        'answers':['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText':'Who is your favorite instructor?',
        'answers':['Max', 'Max', 'Max', 'Max'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Guide 2022 - Quizz App'),
        ),
        body: Column(
          children: [
            Question(
                questions[_questionIndex]['questionText']
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer)
            ).toList(),
          ],
        ),
      ),
    );
  }
}
