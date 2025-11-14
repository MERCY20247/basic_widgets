import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;          // Text to display
  final Color color;          // Text color
  final double fontSize;      // Font size
  final FontWeight fontWeight; // Font weight

  const TextWidget({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
