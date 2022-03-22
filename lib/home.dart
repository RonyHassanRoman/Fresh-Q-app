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
        'answers': ['Red ', 'Green', 'Yellow']
      },
      {
        'questionText': 'what is your fav place?',
        'answers': ['Dhaka ', 'Nil', 'Raj']
      },
      {
        'questionText': 'What is your fav teacher?',
        'answers': [' Rony ', 'Rony', 'Rony']
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
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((answer) {
            return AnsButton(answerQuestion, answer);
          }).toList()
        ],
      ),
    );
  }
}
