import 'package:flutter/material.dart';
import 'package:flutter_lab3_app/styled_text.dart';
import 'package:flutter_lab3_app/dice_roller.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  var activeDiceImage = 'assets/images/dice-1.png';
  GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
  });
  final Color color1;
  final Color color2;
  final Color color3;
  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('Dice rolled!');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
