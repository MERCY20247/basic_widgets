import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final List<Widget> children;

  const RowWidget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: children,
    );
  }
}
