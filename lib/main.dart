import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questionList = const [
    {
      'questionText': 'Question No 1',
      'answers': [
        {'text': 'Answer 1', 'score': 1},
        {'text': 'Answer 2', 'score': 2},
        {'text': 'Answer 3', 'score': 3},
        {'text': 'Answer 4', 'score': 4},
      ],
    },
    {
      'questionText': 'Question No 2',
      'answers': [
        {'text': 'Answer 1', 'score': 1},
        {'text': 'Answer 2', 'score': 2},
        {'text': 'Answer 3', 'score': 3},
        {'text': 'Answer 4', 'score': 4},
      ],
    },
    {
      'questionText': 'Question No 3',
      'answers': [
        {'text': 'Answer 1', 'score': 1},
        {'text': 'Answer 2', 'score': 2},
        {'text': 'Answer 3', 'score': 3},
        {'text': 'Answer 4', 'score': 4},
      ],
    },
    {
      'questionText': 'Question No 4',
      'answers': [
        {'text': 'Answer 1', 'score': 1},
        {'text': 'Answer 2', 'score': 2},
        {'text': 'Answer 3', 'score': 3},
        {'text': 'Answer 4', 'score': 4},
      ],
    },
    {
      'questionText': 'Question No 5',
      'answers': [
        {'text': 'Answer 1', 'score': 1},
        {'text': 'Answer 2', 'score': 2},
        {'text': 'Answer 3', 'score': 3},
        {'text': 'Answer 4', 'score': 4},
      ],
    },
    {
      'questionText': 'Question No 6',
      'answers': [
        {'text': 'Answer 1', 'score': 1},
        {'text': 'Answer 2', 'score': 2},
        {'text': 'Answer 3', 'score': 3},
        {'text': 'Answer 4', 'score': 4},
      ],
    },
    {
      'questionText': 'Question No 7',
      'answers': [
        {'text': 'Answer 1', 'score': 1},
        {'text': 'Answer 2', 'score': 2},
        {'text': 'Answer 3', 'score': 3},
        {'text': 'Answer 4', 'score': 4},
      ],
    },
    {
      'questionText': 'Question No 8',
      'answers': [
        {'text': 'Answer 1', 'score': 1},
        {'text': 'Answer 2', 'score': 2},
        {'text': 'Answer 3', 'score': 3},
        {'text': 'Answer 4', 'score': 4},
      ],
    },
    {
      'questionText': 'Question No 9',
      'answers': [
        {'text': 'Answer 1', 'score': 1},
        {'text': 'Answer 2', 'score': 2},
        {'text': 'Answer 3', 'score': 3},
        {'text': 'Answer 4', 'score': 4},
      ],
    },
    {
      'questionText': 'Question No 10',
      'answers': [
        {'text': 'Answer 1', 'score': 1},
        {'text': 'Answer 2', 'score': 2},
        {'text': 'Answer 3', 'score': 3},
        {'text': 'Answer 4', 'score': 4},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
void _resetQuiz(){
  setState(() {
    _questionIndex = 0;
    _totalScore = 0;
  });
}
   void _printAnswer(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questionList.length) {
      print('NO more Questions');
    } else {
      print('More question');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyQuixApp'),
        ),
        body: _questionIndex < _questionList.length ?
        Quiz(
                questionIndex: _questionIndex,
                questions: _questionList,
                answerQuestion: _printAnswer,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
