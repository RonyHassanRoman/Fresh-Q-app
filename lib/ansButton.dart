import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget {
  final VoidCallback selectHolder;
  final String answerText;

  AnsButton(this.selectHolder, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHolder,
        child:  Text(answerText),
      ),
    );
  }
}
