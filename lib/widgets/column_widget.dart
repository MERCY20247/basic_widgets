import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  final CrossAxisAlignment crossAxisAlignment;
  final List<Widget> children;

  const ColumnWidget({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: children,
    );
  }
}
