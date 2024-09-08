import 'package:flutter/material.dart';

class LeftContainerWidget extends StatelessWidget {
  final Color color;
  final double width;
  const LeftContainerWidget(
      {super.key, required this.color, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 100,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50), topLeft: Radius.circular(50))),
    );
  }
}
