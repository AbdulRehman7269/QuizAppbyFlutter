import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
final VoidCallback selectHandler;
Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.amber),
          foregroundColor: MaterialStateProperty.all(Colors.blue)
        ),
        onPressed: selectHandler, child: Text('Answer 1'),
      ),
    );
  }
}
