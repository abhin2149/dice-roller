import 'package:flutter/material.dart';
import 'package:dice/styled_text.dart';
import 'dart:math';

final rand = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int num = 2;
  
  void rollDice() {
    setState(() {
      num = rand.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$num.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          child: const StyledText("Roll Dice"),
        ),
      ],
    );
  }
}
