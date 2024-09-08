import 'package:flutter/material.dart';

import '../consts.dart';

class ProfileAvatar extends StatelessWidget {
  final String name;
  const ProfileAvatar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: AppColors.whiteColor,
      child: Container(
        height: 41,
        width: 41,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20.5)),
            image: DecorationImage(
              image: AssetImage(
                'assets/$name.png',
              ),
            )),
      ),
    );
  }
}
