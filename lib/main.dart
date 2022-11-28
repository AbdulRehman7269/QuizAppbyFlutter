import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void printAnswer() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questionList = [
      'Question 1',
      'Question 2',
      'Question 3',
      'Question 4',
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quix App'),
        ),
        body: Column(
          children: [
            Text(questionList[questionIndex],
            ),
            ElevatedButton(
              onPressed: printAnswer,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Pressed Answer 2');
              },
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Pressed Answer 3'),
              child: Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: () => print('Pressed Answer 4'),
              child: Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

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
  void printAnswer() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questionLists = [
      'Question 1',
      'Question 2',
      'Question 3',
      'Question 4',
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY Quix App'),
        ),
        body: Column(
          children: [
            Text(
              questionLists[questionIndex],
            ),
            ElevatedButton(
              onPressed: printAnswer,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Pressed Answer 2');
              },
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Pressed Answer 3'),
              child: Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: () => print('Pressed Answer 4'),
              child: Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}
*/
