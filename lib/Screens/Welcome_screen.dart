import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iraq_post/Screens/Register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 168),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF9198A3)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 90,
                    height: 37,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'عربي',
                          style: GoogleFonts.notoSansArabic(
                            color: const Color(0xFF5F6979),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 0.09,
                            letterSpacing: -0.32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 37,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF234274),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'English',
                          style: GoogleFonts.notoSansArabic(
                            color: const Color(0xFFF7FAFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 0.09,
                            letterSpacing: -0.32,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Center(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/IraqHome2.png'),
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Welcome to Iraq Post and enjoy our service",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSansArabic(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 343,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                          ); // Add your navigation logic or any action you want to perform when the button is pressed
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF234274),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text("Register",
                              style: GoogleFonts.notoSansArabic(
                                color: const Color(0xFFF7FAFF),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                height: 0.08,
                                letterSpacing: -0.36,
                              )),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    width: 343,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your navigation logic or any action you want to perform when the button is pressed
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Color(0xFF709FC1)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text("Login",
                              style: GoogleFonts.notoSansArabic(
                                color: const Color(0xFF264980),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                height: 0.08,
                                letterSpacing: -0.36,
                              )),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Text("Continue as a guest",
                      style: GoogleFonts.notoSansArabic(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: const Color(0xFF264980),
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.36,
                          height: 0.08)),
                  const SizedBox(height: 42),
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
          ),
        ),
      ),
    );
  }
}
