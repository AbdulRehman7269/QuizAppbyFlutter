import 'package:app/answer.dart';
import 'package:flutter/material.dart';
import './question.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  var questionIndex = 0;
  void printAnswer(){
    setState(() {
      questionIndex = questionIndex +1;
    });
    print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    const questionList = [
      {
        'questionText': 'Question NO 1',
        'answers': ['1', '2', '3', '4'],
      },
      {
        'questionText': 'Question NO 2',
        'answers': ['5', '6', '7', '8'],
      },
      {
        'questionText': 'Question NO 3',
        'answers': ['9', '10', '11', '12'],
      },
      {
        'questionText': 'Question NO 4',
        'answers': ['13', '14', '15', '16'],
      },
      {
        'questionText': 'Question NO 5',
        'answers': ['17', '18', '19', '20'],
      },
      {
        'questionText': 'Question NO 6',
        'answers': ['21', '22', '23', '24'],
      },
      {
        'questionText': 'Question NO 7',
        'answers': ['25', '26', '27', '28'],
      },
      {
        'questionText': 'Question NO 8',
        'answers': ['29', '30', '31', '32'],
      },
      {
        'questionText': 'Question NO 9',
        'answers': ['33', '34', '35', '36'],
      },
      {
        'questionText': 'Question NO 10',
        'answers': ['37', '38', '39', '40'],
      },
    ];
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('MyQuixApp'),
      ),
      body: Column(
        children: [
          Question(
            questionList[questionIndex]['questionText'] as String
          ),
          ...(questionList[questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(printAnswer, answer);
          }).toList()
        ],
      ),
    ),
    );
  }
}