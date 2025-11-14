import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;
  final double borderRadius;
  final Widget child;

  const ContainerWidget({
    super.key,
    this.width = 200,
    this.height = 100,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.all(10),
    this.color = Colors.amber,
    this.borderRadius = 12,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
