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
      'What is your fav color?',
      'what is your fav place?',
      'what is wala?'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("ReCode"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Quesstions(questions[questionIndex]),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer 1'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer 1'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer 1'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer 1'),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
