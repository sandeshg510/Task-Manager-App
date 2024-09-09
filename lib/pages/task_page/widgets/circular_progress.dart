import 'package:flutter/material.dart';

import '../../../consts.dart';
import 'custom_circular_progress_bar.dart';

class CircularProgressBar extends StatelessWidget {
  final double value;
  final Color color;
  final Size size;

  const CircularProgressBar({
    super.key,
    required this.value,
    this.color = Colors.blue,
    this.size = const Size(70, 70),
  });

  @override
  Widget build(BuildContext context) {
    int valueInPercentage = (value * 100).toInt();

    return Center(
      child: Stack(children: [
        CustomCircularProgressBar(
          value: value,
          color: color,
          size: size,
        ),
        Positioned(
            top: 0.0,
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  '$valueInPercentage%',
                  style: const TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )))
      ]),
    );
  }
}
// Container(
// height: 80,
// width: 80,
// decoration: const BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.all(Radius.circular(27))),
// child: const Text(
// '70%',
// textAlign: TextAlign.center,
// style: TextStyle(
// color: AppColors.blackColor,
// fontSize: 16,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
