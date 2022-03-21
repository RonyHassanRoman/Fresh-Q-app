import 'package:flutter/material.dart';

class Quesstions extends StatelessWidget {
  final String questionText; //2 store value
  Quesstions(this.questionText); //take value

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: Text(
        questionText,
        style: const TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    ); //print value 3
  }
}
