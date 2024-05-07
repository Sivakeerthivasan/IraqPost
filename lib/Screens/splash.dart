import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:iraq_post/Screens/Welcome_screen.dart';
// Import your RegisterPage file

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Image(
              image: AssetImage('assets/IraqHome2.png'),
              height: 200,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 30,
            ), // Add some space between the image and text
            Text(
              "POWERED BY BANAN",
              style: GoogleFonts.notoSansArabic(
                color: const Color(0xFFFFB500),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 0.09,
                letterSpacing: -0.32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
