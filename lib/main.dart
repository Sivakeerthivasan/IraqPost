import 'package:flutter/material.dart';
import 'package:iraq_post/Screens/Homescreen.dart';
import 'package:iraq_post/Screens/Homescreen2.dart';

import 'package:iraq_post/Screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreens(),
    );
  }
}
