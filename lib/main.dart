import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void printAnswer() {
    if (kDebugMode) {
      print('Black Colour Pressed');
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var questions = [
      'What is the colour of Pakistan Flag?',
      'Who is the Founder of Pakistan',
      'What is your Name'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Quiz App'),
        ),
        body: Column(
          children: [
            Text(questions[0]),
            ElevatedButton(
              onPressed: printAnswer,
              child: const Text('Black Colour'),
            ),
            ElevatedButton(
              onPressed: () => debugPrint('Green Colour Pressed'),
              child: const Text('Green Colour'),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('Blue Colour Pressed');
              },
              child:  const Text('Blue Colour'),
            ),
          ],
        ),
      ),
    );
  }
}
// test