import 'package:flutter/material.dart';
import 'package:iraq_post/Screens/Aboutyou_screen.dart';
import 'package:iraq_post/Screens/ConfirmNo.dart';
import 'package:iraq_post/Screens/Register_screen.dart';
import 'package:iraq_post/Screens/Verify_email.dart';
import 'package:iraq_post/Screens/Welcome_screen.dart';
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
      home: Splash(),
    );
  }
}
