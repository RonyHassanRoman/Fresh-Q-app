import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget {
  final VoidCallback selectHolder;

  AnsButton(this.selectHolder);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHolder,
        child: const Text('Answer 1'),
      ),
    );
  }
}
