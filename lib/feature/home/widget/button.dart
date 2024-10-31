import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function(String) onPress;
  final String text;

  const Button({super.key, required this.onPress, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress(text);
      },
      child: Container(
        height: 50,
        width: 150,
        color: Colors.yellow,
        child: Center(child: Text(text)),
      ),
    );
  }
}
