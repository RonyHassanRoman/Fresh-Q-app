import 'package:flutter/material.dart';

class Quesstions extends StatelessWidget {
  String questionText; //2 store value
  Quesstions(this.questionText); //take value
  @override
  Widget build(BuildContext context) {
    return Text(questionText); //print value 3
  }
}
