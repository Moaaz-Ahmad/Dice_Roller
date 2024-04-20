import 'package:flutter/material.dart';
import 'dart:math';

var random = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  void rollDice() {
    setState(() {
      var randomNumber = random.nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$randomNumber.png';
    });
  }
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}