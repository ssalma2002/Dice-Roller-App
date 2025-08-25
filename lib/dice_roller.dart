import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final currentDice = Random();
  var radomNum =1;
  void rollDice() {
    setState(() {
      radomNum = currentDice.nextInt(6)+1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-six-faces-$radomNum.png', width: 300),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: Text(
            'Roll Dice',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
