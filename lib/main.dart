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
      'questionText': 'In which Italian city can you find the Colosseum?',
      'answers': [
        {'text': 'Venice', 'score': 0},
        {'text': 'Rome', 'score': 1},
        {'text': 'Naples', 'score': 0},
        {'text': 'Milan', 'score': 0},
      ],
    },
    {
      'questionText': 'In the TV show New Girl, which actress plays Jessica Day?',
      'answers': [
        {'text': 'Zooey Deschanel', 'score': 1},
        {'text': 'Kaley Cuoco', 'score': 0},
        {'text': 'Kaley Cuoco', 'score': 0},
        {'text': 'Alyson Hannigan', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the largest canyon in the world?',
      'answers': [
        {'text': 'Verdon Gorge, France', 'score': 0},
        {'text': 'King’s Canyon, Australia', 'score': 0},
        {'text': 'Grand Canyon, USA', 'score': 1},
        {'text': 'Fjaðrárgljúfur Canyon, Iceland', 'score': 0},
      ],
    },
    {
      'questionText': 'How long is the border between the United States and Canada?',
      'answers': [
        {'text': '3,525 miles', 'score': 0},
        {'text': '4,525 miles', 'score': 0},
        {'text': '5,525 miles', 'score': 1},
        {'text': '6,525 miles', 'score': 0},
      ],
    },
    {
      'questionText': 'When did Lenin die?',
      'answers': [
        {'text': '21 January 1924', 'score': 1},
        {'text': '21 January 1934', 'score': 0},
        {'text': '21 January 1944', 'score': 0},
        {'text': '21 January 1954', 'score': 0},
      ],
    },
    {
      'questionText': 'In which US state did the ​​Scopes Monkey Trial happen?',
      'answers': [
        {'text': 'Maryland', 'score': 0},
        {'text': 'South Dakota', 'score': 0},
        {'text': 'Indiana', 'score': 0},
        {'text': 'Tennessee', 'score': 1},
      ],
    },
    {
      'questionText': 'When was the book “To Kill a Mockingbird” by Harper Lee published?',
      'answers': [
        {'text': '1950', 'score': 0},
        {'text': '1960', 'score': 1},
        {'text': '1970', 'score': 0},
        {'text': '1980', 'score': 0},
      ],
    },
    {
      'questionText': 'In which museum can you find Leonardo Da Vinci’s Mona Lisa?',
      'answers': [
        {'text': 'Le Louvre', 'score': 1},
        {'text': 'Uffizi Museum', 'score': 0},
        {'text': 'British Museum', 'score': 0},
        {'text': 'Metropolitan Museum of Art', 'score': 0},
      ],
    },
    {
      'questionText': 'In which city can you find the Prado Museum?',
      'answers': [
        {'text': 'Buenos Aires', 'score': 0},
        {'text': 'Barcelona', 'score': 0},
        {'text': 'Santiago', 'score': 0},
        {'text': 'Madrid', 'score':1},
      ],
    },
    {
      'questionText': 'What is the largest active volcano in the world?',
      'answers': [
        {'text': 'Mount Etna', 'score': 0},
        {'text': 'Mount Vesuvius', 'score': 0},
        {'text': 'Mouna Loa', 'score': 1},
        {'text': 'Mount Batur', 'score': 0},
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
          title: Text('Quiz'),
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
