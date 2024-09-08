import 'package:flutter/material.dart';

import '../consts.dart';

class HalfDateWidget extends StatelessWidget {
  final bool isLeftSide;
  const HalfDateWidget({super.key, required this.isLeftSide});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      width: 26,
      decoration: BoxDecoration(
          color: AppColors.greyColor,
          borderRadius: isLeftSide
              ? BorderRadius.only(
                  topRight: Radius.circular(26),
                  bottomRight: Radius.circular(26),
                )
              : BorderRadius.only(
                  topLeft: Radius.circular(26),
                  bottomLeft: Radius.circular(26),
                )),
    );
  }
}
