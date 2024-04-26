import 'package:flutter/material.dart';

class AboutYou extends StatelessWidget {
  const AboutYou({super.key});

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
                          EdgeInsets.symmetric(horizontal: 23, vertical: 12),
                      child: Text(
                        'About',
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
                        'About You',
                        style: TextStyle(
                          fontFamily: 'Nsa',
                          color: Color(0xff070d17),
                          fontSize: 26,
                          letterSpacing: -0.48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Please fill in your credential details",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Nsa',
                          color: Color(0xff404c5f),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'First name ',
                                  style: TextStyle(
                                    color: Color(0xFF101F37),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                    letterSpacing: -0.28,
                                  ),
                                ),
                                TextSpan(
                                  text: '*',
                                  style: TextStyle(
                                    color: Color(0xFFF04438),
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans Arabic',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                    letterSpacing: -0.28,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF8FAFC),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF9198A3)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x0C101828),
                                  blurRadius: 2,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 22,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: Text(
                                              'Enter your first name',
                                              style: TextStyle(
                                                color: Color(0xFF5F6979),
                                                fontSize: 16,
                                                fontFamily: 'Noto Sans Arabic',
                                                fontWeight: FontWeight.w400,
                                                height: 0.09,
                                                letterSpacing: -0.32,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Last name ',
                              style: TextStyle(
                                color: Color(0xFF101F37),
                                fontSize: 14,
                                fontFamily: 'Noto Sans Arabic',
                                fontWeight: FontWeight.w500,
                                height: 0.10,
                                letterSpacing: -0.28,
                              ),
                            ),
                            TextSpan(
                              text: '*',
                              style: TextStyle(
                                color: Color(0xFFF04438),
                                fontSize: 14,
                                fontFamily: 'Noto Sans Arabic',
                                fontWeight: FontWeight.w500,
                                height: 0.10,
                                letterSpacing: -0.28,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF8FAFC),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFF234274)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x0C101828),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 22,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          'smith',
                                          style: TextStyle(
                                            color: Color(0xFF234274),
                                            fontSize: 16,
                                            fontFamily: 'Noto Sans Arabic',
                                            fontWeight: FontWeight.w400,
                                            height: 0.09,
                                            letterSpacing: -0.32,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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

  const _CircularIndicator({this.number, required this.active});

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
            color: Colors.black,
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
