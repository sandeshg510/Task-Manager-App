import 'package:flutter/material.dart';

import 'custom_circular_progress_bar.dart';

class LargeCircularProgressBar extends StatelessWidget {
  final double value;
  final Color color;
  final Size size;

  const LargeCircularProgressBar({
    super.key,
    required this.value,
    this.color = Colors.blue,
    this.size = const Size(100, 100),
  });

  @override
  Widget build(BuildContext context) {
    return CustomCircularProgressBar(
      value: value,
      color: color,
      size: size,
      strokeWidth: 6,
    );
  }
}
