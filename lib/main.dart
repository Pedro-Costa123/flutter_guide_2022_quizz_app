import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      print('Answer chosen!');
    }

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
            Text('The Question'),
            ElevatedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion),
            ElevatedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion),
            ElevatedButton(
                child: Text('Answer 3'),
                onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
