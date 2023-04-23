import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetFunc;
  Result(this.resetFunc);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Quiz Complete!\nYou are a good person",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          OutlinedButton(onPressed: resetFunc, child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
