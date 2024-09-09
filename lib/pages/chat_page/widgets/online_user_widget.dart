import 'package:flutter/material.dart';

class OnlineUserWidget extends StatelessWidget {
  final String name;
  const OnlineUserWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            'assets/$name.png',
          ))),
        ),
        SizedBox(height: height * 0.014),
        Text(
          name,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
