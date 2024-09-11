import 'package:demo_project/pages/home_page/widgets/graph.dart';
import 'package:flutter/material.dart';

import 'pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Grotesk'),
      home: const HomePage(),
    );
  }
}
