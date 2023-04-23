import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, // change background color of button
          backgroundColor: Colors.blue, // change text color of button
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
