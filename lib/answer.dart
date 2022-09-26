import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.answers, this.answerText, {Key? key}) : super(key: key);

  final String answerText;
  final Function() answers;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: ElevatedButton(
          onPressed: answers,
          child: Text(
            answerText,
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
