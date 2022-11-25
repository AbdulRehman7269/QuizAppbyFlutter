import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void questionPrint() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questionLists = [
      '1',
      '2',
      '3',
      '4',
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quizz App'),
        ),
        body: Column(
          children: [
            Text(
              questionLists[questionIndex],
            ),
            ElevatedButton(
              onPressed: questionPrint,
              child: Text('Answer1'),
            ),
            ElevatedButton(
              onPressed: () => print('2'),
              child: Text('Answer2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('3');
              },
              child: Text('Answer3'),
            ),
            ElevatedButton(
              onPressed: () => print('4'),
              child: Text('Answer4'),
            ),
          ],
        ),
      ),
    );
  }
}
