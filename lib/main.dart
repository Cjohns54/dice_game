import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dice'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int sum = 0;
  int rSum = 0;
  int lSum = 0;

  int changeLeftDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    sum += leftDiceNumber;
    return sum;

  }
  int changeRightDiceFace() {
    rightDiceNumber = Random().nextInt(6) + 1;
    sum += leftDiceNumber;
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(()
                  {
                    lSum += changeLeftDiceFace();
                  });
                },
                child: Image.asset('Images/dice__$leftDiceNumber.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(()
                  {
                    rSum += changeRightDiceFace();
                  });
                },
                child: Image.asset('Images/dice__$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}
