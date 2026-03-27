import 'package:flutter/material.dart';

class TextCounter
    extends StatelessWidget {
  final int counter;
  const TextCounter({
    super.key,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "${counter}",
      style: TextStyle(fontSize: 40),
    );
  }
}
