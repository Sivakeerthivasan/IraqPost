import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 393,
        height: 260,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 48),
        clipBehavior: Clip.antiAlias,
        decoration: const ShapeDecoration(
          color: Color(0xFF264980),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 44,
                  decoration: const BoxDecoration(),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 44,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: SizedBox(
                                width: 40,
                                height: 44,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 4.46,
                                      child: SizedBox(
                                        width: 40,
                                        height: 39.54,
                                        child: Stack(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 14.78,
                              top: 3.41,
                              child: SizedBox(
                                width: 10.26,
                                height: 3.27,
                                child: Stack(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 40,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 38,
                        child: GestureDetector(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 38,
                                  height: 38,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF516D99),
                                    shape: CircleBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9,
                                top: 9,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/notify.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Guest,',
                  style: GoogleFonts.notoSansArabic(
                    color: const Color(0xFFF7FAFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: -0.36,
                  ),
                ),
                const SizedBox(height: 28),
                Text(
                  'Welcome',
                  style: GoogleFonts.notoSansArabic(
                    color: const Color(0xFFF7FAFF),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    height: 0.05,
                    letterSpacing: -0.48,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: 352,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 154,
                    height: 29,
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for the Login button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF8FAFC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.all(10),
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.notoSansArabic(
                          color: const Color(0xFF264980),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 0.16,
                          letterSpacing: -0.28,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 18),
                  SizedBox(
                    width: 154,
                    height: 29,
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for the Register button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF8FAFC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.all(10),
                      ),
                      child: Text(
                        'Register',
                        style: GoogleFonts.notoSansArabic(
                          color: const Color(0xFF264980),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 0.16,
                          letterSpacing: -0.28,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: 343,
                  height: 228,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 375,
                        height: 228,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/banner 1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 228,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/banner 2.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 228,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/banner 3.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 228,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/banner 4.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
      
    );
  }
}
