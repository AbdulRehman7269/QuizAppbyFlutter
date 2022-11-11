import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text("What is the colour of Pakistan Flag?"),
            ElevatedButton(
              onPressed: () => print("AnswerChoseBlack"),
              child: Text('Black'),
            ),
            ElevatedButton(
              onPressed: () => print("AnswerChoseGreen"),
              child: Text('Green'),
            ),
            ElevatedButton(
              onPressed: () => print("AnswerChoseBlue"),
              child: Text('Blue'),
            ),
          ],
        ),
      ),
    );
  }
}
