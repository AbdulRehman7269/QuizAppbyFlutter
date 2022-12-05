import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase{
  String resultText;
  if(resultScore <= 10){
    resultText = 'You are Good!';
  }else if(resultScore <= 20){
    resultText = 'You are Better!';
  }else if(resultScore <= 30){
    resultText = 'you are Awoseum!';
  }else if(resultScore > 30){
    resultText = 'You are Excelent';
  }else{
    resultText = 'You are so Bad';
  }
  return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: <Widget>[
      Text(resultPhrase, style: TextStyle(fontSize: 36 , fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
      ),
          ElevatedButton(onPressed: resetHandler, child: Text('Restart Quiz'),
          ),
          ],
      ),
    );
  }
}