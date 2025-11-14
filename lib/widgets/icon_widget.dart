import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;

  const IconWidget({
    super.key,
    required this.icon,
    this.size = 24,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}
