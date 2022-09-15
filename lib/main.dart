import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whats your favorite color?',
      'Whats your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
                questions[questionIndex]
            ),
            ElevatedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
            ),
            ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 chosen!'),
            ),
            ElevatedButton(
                child: Text('Answer 3'),
                onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
