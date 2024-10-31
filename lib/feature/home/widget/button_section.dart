import 'package:flutter/material.dart';
import 'package:test_satu_tujuh/feature/home/widget/button.dart';

class ButtonSection extends StatelessWidget {
  final Function(String) onPress;
  const ButtonSection({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // row 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button(onPress: onPress, text: "1"),
            Button(onPress: onPress , text: "2")
          ],
        ),

        const SizedBox(height: 20),

        //row 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button(onPress: onPress, text: "3"),
            Button(onPress: onPress, text: "4")
          ],
        )
      ],
    );
  }
}
