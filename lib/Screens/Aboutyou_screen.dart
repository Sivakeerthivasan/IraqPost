// ignore_for_file: sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iraq_post/Screens/ConfirmNo.dart';

class AboutYou extends StatefulWidget {
  const AboutYou({super.key});

  @override
  _AboutYou createState() => _AboutYou();
}

class _AboutYou extends State<AboutYou> {
  bool _isButtonEnabled = false;
  bool _isEmailFilled = false;
  bool _isPasswordFilled = false;
  bool _isConfirmPasswordFilled = false;

  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _confirmPasswordFocusNode = FocusNode();

  void _checkButtonEnabled() {
    setState(() {
      _isButtonEnabled =
          _isEmailFilled && _isPasswordFilled && _isConfirmPasswordFilled;
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 393,
                height: 50,
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 10,
                  right: 20, // Corrected padding
                  bottom: 8,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFFF8FAFC),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      color: const Color(0xFF5F6979),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                height: 30,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Green tick for the first circular indicator
                        _GreenTick(),
                        const SizedBox(width: 10),
                        const _Line(color: Color(0xff9198A3)),
                        const SizedBox(width: 10),
                        // Green tick for the second circular indicator
                        _GreenTick(),
                        const SizedBox(width: 10),
                        const _Line(color: Color(0xff9198A3)),
                        const SizedBox(width: 10),
                        Container(
                          width: 85,
                          height: 25,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF7BAFD4),
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'About',
                                style: GoogleFonts.notoSansArabic(
                                  fontSize: 14,
                                  height: 0.10,
                                  letterSpacing: -0.28,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF264980),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        const _Line(color: Color(0xff9198A3)),
                        const SizedBox(width: 10),
                        const _CircularIndicator(
                            number: '4',
                            active:
                                true), // Fourth circular indicator remains the same
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Image(
                      image: AssetImage('assets/Iraq.png'),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About You',
                          style: GoogleFonts.notoSansArabic(
                              color: const Color(0xFF070D17),
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              height: 0.05,
                              letterSpacing: -0.48),
                        ),
                        const SizedBox(height: 22),
                        Text(
                          "Please fill in your credential details.",
                          style: GoogleFonts.notoSansArabic(
                            fontSize: 16,
                            height: 0.9,
                            letterSpacing: -0.32,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF404C5F),
                          ),
                        ),
                        const SizedBox(height: 36),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'First name',
                              style: GoogleFonts.notoSansArabic(
                                  color: const Color(0xFF0B1627),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 0.10,
                                  letterSpacing: -0.28),
                            ),
                            const Text(
                              ' *',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                                height: 0.09,
                                letterSpacing: -0.32,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          height: 44,
                          width: 345,
                          child: TextField(
                            focusNode: _emailFocusNode,
                            onChanged: (value) {
                              setState(() {
                                _isEmailFilled = value.isNotEmpty;
                                _checkButtonEnabled();
                              });
                            },
                            style: const TextStyle(
                              color: Color(0xFF234274),
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              labelText: _isEmailFilled
                                  ? null
                                  : 'Enter your first name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: _emailFocusNode.hasFocus
                                      ? Colors.red
                                      : (_isEmailFilled
                                          ? Colors.blue
                                          : Colors.grey),
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'Last name',
                              style: GoogleFonts.notoSansArabic(
                                fontWeight: FontWeight.normal,
                                color: const Color(0xff0B1627),
                                fontSize: 14,
                                height: 0.09,
                                letterSpacing: -0.32,
                              ),
                            ),
                            const Text(
                              ' *',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                height: 0.09,
                                letterSpacing: -0.32,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          height: 44,
                          width: 345,
                          child: TextField(
                            focusNode: _passwordFocusNode,
                            onChanged: (value) {
                              setState(() {
                                _isPasswordFilled = value.isNotEmpty;
                                _checkButtonEnabled();
                              });
                            },
                            style: const TextStyle(
                              color: Color(0xFF234274),
                            ),
                            decoration: InputDecoration(
                              labelText: _isPasswordFilled
                                  ? null
                                  : 'Enter you last name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: _passwordFocusNode.hasFocus
                                      ? Colors.red
                                      : (_isPasswordFilled
                                          ? Colors.blue
                                          : Colors.grey),
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'Phone number',
                              style: GoogleFonts.notoSansArabic(
                                fontWeight: FontWeight.normal,
                                color: const Color(0xff0B1627),
                                fontSize: 14,
                                height: 0.09,
                                letterSpacing: -0.32,
                              ),
                            ),
                            const Text(
                              ' *',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                height: 0.09,
                                letterSpacing: -0.32,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          height: 44,
                          width: 345,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            focusNode: _confirmPasswordFocusNode,
                            onChanged: (value) {
                              setState(() {
                                _isConfirmPasswordFilled = value.isNotEmpty;
                                _checkButtonEnabled();
                              });
                            },
                            style: const TextStyle(
                              color: Color(0xFF234274),
                            ),
                            decoration: InputDecoration(
                              labelText: _isConfirmPasswordFilled
                                  ? null
                                  : 'Mobile number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: _confirmPasswordFocusNode.hasFocus
                                      ? Colors.red
                                      : (_isConfirmPasswordFilled
                                          ? Colors.blue
                                          : Colors.grey),
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 48),
                        SizedBox(
                          height: 45,
                          width: 343,
                          child: ElevatedButton(
                            onPressed: _isButtonEnabled
                                ? () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ConfirmNo()),
                                    );
                                  }
                                : null,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: _isButtonEnabled
                                    ? const Color(0xff234274)
                                    : const Color(0xFFF7FAFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                minimumSize: const Size(343, 45),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 20)),
                            child: Text(
                              'Continue',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSansArabic(
                                  color: _isButtonEnabled
                                      ? Colors.white
                                      : const Color(0xFF5F6979),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  height: 0.18,
                                  letterSpacing: -0.36),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GreenTick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFF9198A3),
        ),
      ),
      child: const Center(
        child: Icon(
          Icons.check,
          color: Colors.green,
        ),
      ),
    );
  }
}

class _CircularIndicator extends StatelessWidget {
  final String number;
  final bool active;

  const _CircularIndicator({
    required this.number,
    required this.active,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? Colors.white : Colors.grey,
        border: Border.all(
          color: const Color(0xff9198a3),
        ),
      ),
      child: Center(
        child: Text(
          number,
          style: const TextStyle(
            color: Color.fromARGB(255, 86, 92, 101),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

class _Line extends StatelessWidget {
  final Color color;

  const _Line({
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 1,
      color: const Color(0xFF9198A3),
    );
  }
}
