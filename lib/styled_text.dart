import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.label, {super.key});

  final String label;

  @override
  Widget build(context) {
    return Text(
      label,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
