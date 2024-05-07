import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iraq_post/Screens/Aboutyou_screen.dart';

import 'ConfirmNo.dart';

class ConfirmNo extends StatefulWidget {
  const ConfirmNo({super.key});

  @override
  _ConfirmNoState createState() => _ConfirmNoState();
}

class _ConfirmNoState extends State<ConfirmNo> {
  bool allOTPFilled = false;

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
                  right: 20, // Adjusted the right padding
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _GreenTick(),
                        const SizedBox(width: 10),
                        const _Line(color: Color(0xff9198A3)),
                        const SizedBox(width: 10),
                        _GreenTick(),
                        const SizedBox(width: 10),
                        const _Line(color: Color(0xff9198A3)),
                        const SizedBox(width: 10),
                        _GreenTick(),
                        const SizedBox(width: 10),
                        const _Line(color: Color(0xff9198A3)),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF7BAFD4),
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 7,
                              vertical: 10,
                            ),
                            child: Text(
                              'Verify phone',
                              style: GoogleFonts.notoSansArabic(
                                color: const Color(0xFF264980),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 0.10,
                                letterSpacing: -0.28,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset(
                        'assets/Iraq.png'), // Corrected image loading
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Confirm your number',
                          style: GoogleFonts.notoSansArabic(
                            color: const Color(0xFF070D17),
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            height: 0.05,
                            letterSpacing: -0.48,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Enter the code sent to +966123456789 to verify activate your account",
                          style: GoogleFonts.notoSansArabic(
                            color: const Color(0xFF404C5F),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.32,
                          ),
                        ),
                        const SizedBox(height: 28),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 5),
                            _OTPBox(setAllOTPFilled),
                            const SizedBox(width: 30),
                            _OTPBox(setAllOTPFilled),
                            const SizedBox(width: 30),
                            _OTPBox(setAllOTPFilled),
                            const SizedBox(width: 30),
                            _OTPBox(setAllOTPFilled),
                            const SizedBox(width: 25),
                            _OTPBox(setAllOTPFilled),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 353,
                          height: 90,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 10),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFE9EDF2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                '00:02:56',
                                style: TextStyle(
                                  color: Color(0xFF5F6979),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 0.10,
                                  letterSpacing: -0.28,
                                ),
                              ),
                              const SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  // Add functionality to resend email
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 16,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(),
                                      child: const Stack(children: []),
                                    ),
                                    const SizedBox(width: 0),
                                    const Icon(
                                      Icons.refresh,
                                      size: 18,
                                      color: Color(0xFF264980),
                                    ),
                                    const SizedBox(width: 4),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 3, right: 26),
                                      child: Text(
                                        'Send a new code',
                                        style: GoogleFonts.notoSansArabic(
                                          color: const Color(0xFF264980),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline,
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
                        const SizedBox(height: 32),
                        Container(
                          width: 390,
                          height: 214,
                          padding: const EdgeInsets.symmetric(vertical: 48),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 343,
                                height: 45,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [],
                                ),
                              ),
                              const SizedBox(height: 12),
                              SizedBox(
                                width: 343,
                                height: 45,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: ElevatedButton(
                                    onPressed: allOTPFilled ? () {} : null,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: allOTPFilled
                                          ? const Color(0xFF234274)
                                          : const Color(0xFFE9EDF2),
                                      // Change text color as needed
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Verify',
                                          // Change button text as needed
                                          style: GoogleFonts.notoSansArabic(
                                            color: allOTPFilled
                                                ? const Color(0xFFF7FAFF)
                                                : const Color(0xFF5F6979),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            height: 0.10,
                                            letterSpacing: -0.36,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
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

  void setAllOTPFilled(bool filled) {
    setState(() {
      allOTPFilled = filled;
    });
  }
}

class ConfirmDetails extends StatelessWidget {
  const ConfirmDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm Details'),
      ),
      body: const Center(
        child: Text('This is the Confirm Details page'),
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
  final String? number;
  final bool active;

  const _CircularIndicator({Key? key, this.number, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 29,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? Colors.white : Colors.grey,
        border: Border.all(
          color: const Color(0xFF9198A3),
        ),
      ),
      child: Center(
        child: Text(
          number!,
          style: const TextStyle(
            color: Color(0xFF5F6979),
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

class _Line extends StatelessWidget {
  final Color color;

  const _Line({Key? key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 1,
      color: color,
    );
  }
}

class _OTPBox extends StatefulWidget {
  final Function(bool) onFilled;

  const _OTPBox(this.onFilled);

  @override
  _OTPBoxState createState() => _OTPBoxState();
}

class _OTPBoxState extends State<_OTPBox> {
  final TextEditingController _controller = TextEditingController();
  late FocusNode _focusNode;
  Color _borderColor = const Color(0xFF9198A3);
  Color _textColor = Colors.black;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      if (_controller.text.length == 1) {
        FocusScope.of(context).nextFocus();
        _borderColor = const Color(0xFF234274);
        _textColor = const Color(0xFF234274);
      } else {
        _borderColor = const Color(0xFF9198A3);
        _textColor = Colors.black;
      }
      widget.onFilled(_controller.text.length == 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: _borderColor,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: TextInputType.number,
        style: TextStyle(color: _textColor),
        decoration: const InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
        onChanged: (value) {
          setState(() {});
        },
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ConfirmNo(),
  ));
}
