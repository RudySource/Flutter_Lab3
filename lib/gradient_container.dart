import 'package:flutter/material.dart';
import 'package:flutter_lab3_app/styled_text.dart';

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeDiceImage, width: 300),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
                // const SizedBox(height: 20,)
                foregroundColor: Colors.lime,
                textStyle: const TextStyle(fontSize: 30),
              ),
              child: Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
