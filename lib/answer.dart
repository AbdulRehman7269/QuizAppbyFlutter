import 'package:flutter/material.dart';
import './main.dart';
class Answer extends StatelessWidget {
 final VoidCallback selectHandler;
 final String answerText;
 Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container( 
      width: 150,
      margin: EdgeInsets.all(3),
      child:
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.pink),
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
        onPressed: selectHandler, child: Text(answerText),
      ),
    );
  }
}
