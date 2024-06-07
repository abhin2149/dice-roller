import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';

void main() {
  const List<Color> colors = [Colors.red, Color.fromARGB(255, 93, 37, 190)];
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: colors),
      ),
    ),
  );
}
