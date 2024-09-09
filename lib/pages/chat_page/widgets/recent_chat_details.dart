import 'package:flutter/material.dart';

import '../../../consts.dart';

class RecentChatDetails extends StatelessWidget {
  final String name;
  final String lastConverse;
  final bool messageReceived;
  const RecentChatDetails(
      {super.key,
      required this.name,
      required this.lastConverse,
      this.messageReceived = false});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              height: 54,
              'assets/$name.png',
            ),
            SizedBox(width: width * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor),
                ),
                SizedBox(height: height * 0.0019),
                Text(
                  lastConverse,
                  style: TextStyle(
                      fontSize: 12,
                      color: messageReceived
                          ? Colors.white.withOpacity(0.9)
                          : Colors.white38),
                )
              ],
            ),
          ],
        ),
        Column(
          children: [
            if (messageReceived)
              const CircleAvatar(
                radius: 8,
                backgroundColor: Colors.green,
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            SizedBox(height: height * 0.005),
            const Text(
              '20 min',
              style: TextStyle(fontSize: 12, color: Colors.white38),
            ),
          ],
        )
      ],
    );
  }
}
