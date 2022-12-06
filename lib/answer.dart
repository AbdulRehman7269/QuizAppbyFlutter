import 'package:flutter/material.dart';
import './main.dart';
class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(10),
      child:
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
          foregroundColor: MaterialStateProperty.all(Colors.black),
          padding: MaterialStateProperty.all(EdgeInsets.all(10))
        ),
        onPressed: selectHandler, child: Text(answerText, style: TextStyle( fontSize: 24,),textAlign: TextAlign.center,),
      ),
    );
  }
}