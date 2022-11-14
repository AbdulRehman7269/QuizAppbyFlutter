import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void questionAnswers() {
    print("Black Colour");
  }


  @override
  Widget build(BuildContext context) {
    var questions = [
      'Colours',
      'Name',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Column(
          children: [
          Text(questions[1]),
      ElevatedButton(onPressed: questionAnswers, child: Text("Black Colour"),
      ),
            ElevatedButton(onPressed: () => print("Green Colour"), child: Text("Green Colour"),
            ),
            ElevatedButton(onPressed:() {
              print("Blue Colour");
            }, child: Text("Blue Colour"),
            ),
      ],
    ),)
    ,
    );
  }
}