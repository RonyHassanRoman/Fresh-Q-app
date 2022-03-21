import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget {
  const AnsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: null,
        child: const Text('Answer 1'),
      ),
    );
  }
}
