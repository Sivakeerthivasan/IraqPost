import 'package:flutter/material.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9FBFD),
        title: Container(
          width: 420,
          height: 40,
          padding: const EdgeInsets.only(
            top: 8,
            left: 10,
            right: 334,
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
              Container(
                width: 24,
                height: 24,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Color(0xFF5F6979),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xffF9FBFD),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                      child: Text(
                        'Verify email',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Nsa',
                          height: 0.10,
                          letterSpacing: -0.28,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF264980),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const _Line(color: Color(0xff9198A3)),
                  const SizedBox(width: 10),
                  const _CircularIndicator(
                    number: '3',
                    active: true,
                  ),
                  const SizedBox(width: 10),
                  const _Line(color: Color(0xff9198A3)),
                  const SizedBox(width: 10),
                  const _CircularIndicator(number: '4', active: true),
                  const SizedBox(width: 10),
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
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Verify your email',
                        style: TextStyle(
                            fontFamily: 'Nsa',
                            color: Color(0xff070d17),
                            fontSize: 26,
                            letterSpacing: -0.48,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "We have sent a verification OTP email to",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Nsa',
                          color: Color(0xff404c5f),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Jhonson@gmail.com',
                        style: TextStyle(
                          color: Color(0xFF6E85AA),
                          fontSize: 16,
                          fontFamily: 'Noto Sans Arabic',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                          letterSpacing: -0.32,
                        ),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 5),
                          _OTPBox(),
                          const SizedBox(width: 30),
                          _OTPBox(),
                          const SizedBox(width: 30),
                          _OTPBox(),
                          const SizedBox(width: 30),
                          _OTPBox(),
                          const SizedBox(width: 25),
                          _OTPBox(),
                        ],
                      ),
                      const SizedBox(height: 32),
                      Container(
                        width: 343,
                        height: 70,
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
                                fontFamily: 'Noto Sans Arabic',
                                fontWeight: FontWeight.w600,
                                height: 0.10,
                                letterSpacing: -0.28,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
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
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Resend the verification email',
                                    style: TextStyle(
                                      color: Color(0xFF264980),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans Arabic',
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                      height: 0.10,
                                      letterSpacing: -0.28,
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
                                children: [
                                  Text(
                                    'Continue to email app ',
                                    style: TextStyle(
                                      color: Color(0xFF264980),
                                      fontSize: 18,
                                      fontFamily: 'Noto Sans Arabic',
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                      height: 0.08,
                                      letterSpacing: -0.36,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 28),
                            SizedBox(
                              width: 343,
                              height: 45,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add your functionality here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(
                                        0xFFE9EDF2), // Change text color as needed
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Continue', // Change button text as needed
                                        style: TextStyle(
                                          color: Color(0xFF5F6979),
                                          fontSize: 16,
                                          fontFamily: 'Noto Sans Arabic',
                                          fontWeight: FontWeight.bold,
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
  @override
  _OTPBoxState createState() => _OTPBoxState();
}

class _OTPBoxState extends State<_OTPBox> {
  final TextEditingController _controller = TextEditingController();
  late FocusNode _focusNode;
  Color _borderColor = const Color(0xFF9198A3);
  Color _textColor = Colors.black;
  static bool allBoxesFilled = false;

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

      allBoxesFilled = _checkAllBoxesFilled();
    });
  }

  bool _checkAllBoxesFilled() {
    for (int i = 0; i < 5; i++) {
      if (_controller.text.isEmpty) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
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
          setState(() {
            allBoxesFilled = _checkAllBoxesFilled();
          });
        },
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: VerifyEmail(),
  ));
}
