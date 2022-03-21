import 'package:anotherquizapp/ansButton.dart';
import 'package:anotherquizapp/questions.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your fav color?',
        'answer': ['Red ', 'Green', 'Yello']
      },
      {
        'questionText': 'what is your fav place?',
        'answer': ['Dhaka ', 'Nil', 'Raj']
      },
      {
        'questionText': 'What is your fav teacher?',
        'answer': [' Rony ', 'Rony', 'Rony']
      }

      // 'what is your fav place?',
      // 'what is wala?'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("ReCode"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Quesstions(questions[questionIndex]['questionText'] as String),
          const SizedBox(
            height: 10,
          ),
          AnsButton(answerQuestion),
          const SizedBox(
            height: 20,
          ),
          AnsButton(answerQuestion),
          const SizedBox(
            height: 20,
          ),
          AnsButton(answerQuestion),
          const SizedBox(
            height: 20,
          ),
          AnsButton(answerQuestion),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
