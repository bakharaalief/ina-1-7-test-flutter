import 'package:flutter/material.dart';

class ResultSection extends StatelessWidget {
  final String result;

  const ResultSection({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Text(result);
  }
}
