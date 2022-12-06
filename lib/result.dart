import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore == 1) {
      resultText = 'Score = 1/10';
    } else if (resultScore == 2) {
      resultText = 'Score = 2/10';
    } else if (resultScore == 3) {
      resultText = 'Score = 3/10';
    } else if (resultScore == 4) {
      resultText = 'Score = 4/10';
    } else if (resultScore == 5) {
      resultText = 'Score = 5/10';
    } else if (resultScore == 6) {
      resultText = 'Score = 6/10';
    } else if (resultScore == 7) {
      resultText = 'Score = 7/10';
    } else if (resultScore == 8) {
      resultText = 'Score = 8/10';
    } else if (resultScore == 9) {
      resultText = 'Score = 9/10';
    } else if (resultScore == 10) {
      resultText = 'Score = 10/10';
    } else {
      resultText = 'Score = 0/10';
    }
    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        children: <Widget>[
       Container(
         margin: EdgeInsets.only(bottom: 50, top: 20),
         child : Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            padding: MaterialStateProperty.all(EdgeInsets.all(10))
            ),
            onPressed: resetHandler,
            child: const Text('Restart Quiz',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,)),
          ),
          Container(
            margin: EdgeInsets.only(top: 60 , bottom: 10),
            child: const Text('Correct Answers' , style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),

            color: Colors.tealAccent,
            child: const Text(
                " Answer 1 : Rome \n Answer 2 : Zooey Deschanel\n"
                    " Answer 3 : Grand Canyon\n Answer 4 : 5,525 mil\n"
                    " Answer 5 : 21 January 1924\n Answer 6 : Tennessee\n "
                    "Answer 7 : 1960\n Answer 8 : Le Louvre\n Answer 9 : Madrid\n "
                    "Answer 10: Mouna Loa",
              style:TextStyle(fontSize: 22, fontWeight: FontWeight.w500 ),
            ),
          ),
        ],
      ),
    );
  }
}
