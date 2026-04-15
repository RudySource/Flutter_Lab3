import 'package:flutter/material.dart';

class TextHelloWorld extends StatelessWidget {
  const TextHelloWorld({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello World",
      style: TextStyle(fontSize: 32, color: Colors.white),
    );
  }
}
