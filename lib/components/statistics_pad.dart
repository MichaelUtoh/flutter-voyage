import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatPad extends StatefulWidget {
  int value;
  String title;
  StatPad({
    super.key,
    required this.value,
    required this.title,
  });

  @override
  State<StatPad> createState() => _StatPadState();
}

class _StatPadState extends State<StatPad> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.value.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          widget.title,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
