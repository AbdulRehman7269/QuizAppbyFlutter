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
    var questionList = [
      'Question NO 1',
      'Question NO 2',
      'Question NO 3',
      'Question NO 4',
      'Question NO 5',
      'Question NO 6',
      'Question NO 7',
      'Question NO 8',
      'Question NO 9',
      'Question NO 10',
    ];
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('MyQuixApp'),
      ),
      body: Column(
        children: [
          Question(questionList[questionIndex]),
          Answer(printAnswer),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pink),
              foregroundColor: MaterialStateProperty.all(Colors.green)
            ),
            onPressed: () {
            print('Pressed Answer 2');
          },
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              foregroundColor: MaterialStateProperty.all(Colors.deepPurple)

            ),
            onPressed: () {
            print('Pressed Answer 3');
          },
            child: Text('Answer 3'),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.deepPurple)
            ),
            onPressed: () {
            print('Pressed Answer 4');
          },
            child: Text('Answer 4'),
          ),
        ],
      ),
    ),
    );
  }
}