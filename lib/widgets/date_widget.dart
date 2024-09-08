import 'package:demo_project/consts.dart';
import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  final String date;
  final String weekDay;
  const DateWidget({super.key, required this.date, required this.weekDay});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      width: 52,
      decoration: BoxDecoration(
          color: AppColors.greyColor, borderRadius: BorderRadius.circular(25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            weekDay,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
