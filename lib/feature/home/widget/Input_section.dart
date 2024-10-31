import 'package:flutter/material.dart';

class InputSection extends StatelessWidget {
  final Function(String) onChanged;

  const InputSection({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: TextInputType.number,
    );
  }
}
