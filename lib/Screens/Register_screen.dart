// ignore_for_file: sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iraq_post/Screens/Verify_email.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isButtonEnabled = false;
  bool _isNationalIDFilled = false;
  bool _isEmailFilled = false;
  bool _isPasswordFilled = false;
  bool _isConfirmPasswordFilled = false;
  final _nationalIDFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _confirmPasswordFocusNode = FocusNode();

  void _checkButtonEnabled() {
    setState(() {
      _isButtonEnabled = _isNationalIDFilled &&
          _isEmailFilled &&
          _isPasswordFilled &&
          _isConfirmPasswordFilled;
    });
  }

  @override
  void dispose() {
    _nationalIDFocusNode.dispose();
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
                  right: 30, // Corrected padding
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
                                Text('Register',
                                    style: GoogleFonts.notoSansArabic(
                                      fontSize: 14,
                                      height: 0.10,
                                      letterSpacing: -0.28,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF264980),
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          const _Line(color: Color(0xff9198A3)),
                          const SizedBox(width: 10),
                          const _CircularIndicator(number: '2', active: true),
                          const SizedBox(width: 10),
                          const _Line(color: Color(0xff9198A3)),
                          const SizedBox(width: 10),
                          const _CircularIndicator(number: '3', active: true),
                          const SizedBox(width: 10),
                          const _Line(color: Color(0xff9198A3)),
                          const SizedBox(width: 10),
                          const _CircularIndicator(number: '4', active: true),
                        ],
                      ),
                    ]),
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
                  const SizedBox(height: 26),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: GoogleFonts.notoSansArabic(
                              color: const Color(0xFF070D17),
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              height: 0.05,
                              letterSpacing: -0.48),
                        ),
                        const SizedBox(height: 22),
                        Text(
                          "Let's begin setting up your new account.",
                          style: GoogleFonts.notoSansArabic(
                            fontSize: 16,
                            height: 0.9,
                            letterSpacing: -0.32,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF404C5F),
                          ),
                        ),
                        const SizedBox(height: 26),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'National ID',
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
                            keyboardType: TextInputType.number,
                            focusNode: _nationalIDFocusNode,
                            onChanged: (value) {
                              setState(() {
                                _isNationalIDFilled = value.isNotEmpty;
                                _checkButtonEnabled();
                              });
                            },
                            style: GoogleFonts.notoSansArabic(
                                color: const Color(0xFF234274),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: -0.32),
                            decoration: InputDecoration(
                              labelText: _isNationalIDFilled
                                  ? null
                                  : 'Enter your National ID',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: _nationalIDFocusNode.hasFocus ||
                                          _isNationalIDFilled
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 26),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'Email',
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
                            style: GoogleFonts.notoSansArabic(
                                color: const Color(0xFF234274),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: -0.32),
                            decoration: InputDecoration(
                              labelText:
                                  _isEmailFilled ? null : 'Enter your email',
                              prefixIcon:
                                  const Icon(Icons.email_outlined, size: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color:
                                      _emailFocusNode.hasFocus || _isEmailFilled
                                          ? Colors.blue
                                          : Colors.grey,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 26),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'Password',
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
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: _isPasswordFilled
                                  ? null
                                  : 'Enter your password',
                              suffixIcon: IconButton(
                                icon: const Icon(
                                  Icons.visibility_off_outlined,
                                  size: 20,
                                ),
                                color: const Color(0xFF5F6979),
                                onPressed: () {},
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                  color: Color(0xFF234274),
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 26),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'Confirm password',
                              style: GoogleFonts.notoSansArabic(
                                color: const Color(0xff0B1627),
                                fontWeight: FontWeight.w500,
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
                            focusNode: _confirmPasswordFocusNode,
                            onChanged: (value) {
                              setState(() {
                                _isConfirmPasswordFilled = value.isNotEmpty;
                                _checkButtonEnabled();
                              });
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: _isConfirmPasswordFilled
                                  ? null
                                  : 'Confirm your password',
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.visibility_off_outlined,
                                    size: 20),
                                color: const Color(0xFF5F6979),
                                onPressed: () {},
                              ),
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
                        const SizedBox(height: 22),
                        SizedBox(
                          height: 45,
                          width: 343,
                          child: ElevatedButton(
                            onPressed: _isButtonEnabled
                                ? () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 200),
                                          child: AlertDialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            backgroundColor:
                                                const Color(0xFFF8FAFF),
                                            title: Text(
                                              'Is the email provided correct?',
                                              style: GoogleFonts.notoSansArabic(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xFF0F1F37),
                                                letterSpacing: -0.32,
                                                height: 0.09,
                                              ),
                                            ),
                                            content: SizedBox(
                                              width: 400,
                                              height: 110,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 6),
                                                  Text(
                                                    'Jhonson@gmail.com',
                                                    style: GoogleFonts
                                                        .notoSansArabic(
                                                            color: const Color(
                                                                0xFF404C5f),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14,
                                                            letterSpacing:
                                                                -0.28),
                                                  ),
                                                  const SizedBox(height: 32),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        width: 120,
                                                        height: 45,
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  elevation: 0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(4),
                                                                  ),
                                                                  side: const BorderSide(
                                                                      color: Color(
                                                                          0xFF234274))),
                                                          child: Text(
                                                            'Edit',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: GoogleFonts
                                                                .notoSansArabic(
                                                              color: const Color(
                                                                  0xFF264980),
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 0.08,
                                                              letterSpacing:
                                                                  -0.36,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 14),
                                                      SizedBox(
                                                        width: 120,
                                                        height: 45,
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const VerifyEmail()),
                                                            );
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                const Color(
                                                                    0xff234274),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4),
                                                            ),
                                                          ),
                                                          child: Text(
                                                            'Confirm',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: GoogleFonts
                                                                .notoSansArabic(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              letterSpacing:
                                                                  -0.34,
                                                              height: 0.08,
                                                              color: const Color(
                                                                  0xFFF7FAFF),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  }
                                : null,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: _isButtonEnabled
                                    ? const Color(0xff234274)
                                    : const Color(0xFFE9EDF2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                minimumSize: const Size(343, 45),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 10)),
                            child: Text(
                              'Register',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSansArabic(
                                  color: _isButtonEnabled
                                      ? const Color(0xFFF7FAFF)
                                      : const Color(0xFF5F6979),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  height: 0.18,
                                  letterSpacing: -0.36),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 343,
                          height: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already a member? ',
                                style: GoogleFonts.notoSansArabic(
                                  color: const Color(0xFF404C5F),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  height: 0.10,
                                  letterSpacing: -0.28,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.notoSansArabic(
                                    color: const Color(0xFF1B345B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    height: 0.10,
                                    letterSpacing: -0.28,
                                  ),
                                ),
                              ),
                            ],
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
        border: Border.all(
          color: const Color(0xff9198a3),
        ),
      ),
      child: Center(
        child: Text(
          number,
          style: GoogleFonts.notoSansArabic(
              color: const Color(0xFF5F6979),
              fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 0.10,
              letterSpacing: -0.28),
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
