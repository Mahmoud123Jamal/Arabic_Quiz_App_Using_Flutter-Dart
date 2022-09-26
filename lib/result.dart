import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  const Result(this.holder, this.resultScore, {Key? key}) : super(key: key);

  final Function() holder;
  final int resultScore;

  String get resultPhrase {
    String resultText = '';
    if (resultScore <= 10) {
      resultText = 'your estimate :very bad';
    } else if (resultScore <= 19) {
      resultText = 'your estimate :bad';
    } else if (resultScore <= 26) {
      resultText = 'your estimate :good';
    }
    
    else if (resultScore <= 30) {
      resultText = 'your estimate : very good';
      }
    else {
      resultText = 'your estimate :excellent';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
          Text(
            'Quiz Done!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          Text(
            'Total Score = $resultScore',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          TextButton(
            onPressed: holder,
            child: const Text(
              'Restart The Application',
              style: TextStyle(
                fontSize: 30,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            '@All Rights Reserved to Eng: Mahmoud jamal',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}