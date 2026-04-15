import 'package:flutter/material.dart';
import 'package:flutter_lab3_app/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
  });
  final Color color1;
  final Color color2;
  final Color color3;
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
          children: [
            Image.asset('assets/images/dash.png', width: 300),
            TextButton(onPressed: rollDice, child: Text('Roll Dice')),
          ],
        ),
      ),
    );
  }
  void rollDice(){
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
            children: [
              Image.asset('assets/images/dash.png', width: 300),
              TextButton(onPressed: onPressed, child: Text('Roll Dice')),
            ],
          ),
        ),
      );
  }
}
