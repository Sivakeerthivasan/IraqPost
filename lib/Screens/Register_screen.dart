import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isButtonEnabled = false;
  bool _isEmailFilled = false;
  bool _isPasswordFilled = false;
  bool _isConfirmPasswordFilled = false;

  void _checkButtonEnabled() {
    setState(() {
      _isButtonEnabled =
          _isEmailFilled && _isPasswordFilled && _isConfirmPasswordFilled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF9FBFD),
          elevation: 1,
          leading: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                      color: const Color(0xff5F6979),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
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
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF7BAFD4),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 2.5),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Nsa',
                            letterSpacing: -0.28,
                            fontWeight: FontWeight.w500,
                            color: Color(0Xff264980),
                          ),
                        ),
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
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/Iraqpost.png',
                    width: 100,
                    height: 40,
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome',
                          style: TextStyle(
                              fontFamily: 'Nsa',
                              color: Color(0xff070d17),
                              fontSize: 26,
                              letterSpacing: -0.48,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Let's begin setting up your new account.",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Nsa',
                            color: Color(0xff404c5f),
                          ),
                        ),
                        const SizedBox(height: 32),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Nsa',
                                color: Color(0xff0B1627),
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              ' *',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                _isEmailFilled = value.isNotEmpty;
                                _checkButtonEnabled();
                              });
                            },
                            decoration: InputDecoration(
                              labelText:
                                  _isEmailFilled ? null : 'Enter your mail',
                              prefixIcon: const Icon(Icons.email_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: _isEmailFilled
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
                        const SizedBox(height: 24),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'Password',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Nsa',
                                color: Color(0xff0B1627),
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              ' *',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: TextField(
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
                                icon: const Icon(Icons.visibility_off_outlined),
                                color: const Color(0xff5F6979),
                                onPressed: () {},
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: _isPasswordFilled
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
                        const SizedBox(height: 24),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'Confirm Password',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Nsa',
                                color: Color(0xff0B1627),
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              ' *',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                _isConfirmPasswordFilled = value.isNotEmpty;
                                _checkButtonEnabled();
                              });
                            },
                            obscureText: true,
                            style: const TextStyle(fontFamily: 'Nsa'),
                            decoration: InputDecoration(
                              labelText: _isConfirmPasswordFilled
                                  ? null
                                  : 'Confirm your password',
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.visibility_off_outlined),
                                color: const Color(0xFF5F6979),
                                onPressed: () {},
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: _isConfirmPasswordFilled
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
                        const SizedBox(height: 60),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ElevatedButton(
                            onPressed: _isButtonEnabled ? () {} : null,
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: _isButtonEnabled
                                  ? const Color(0xff234274)
                                  : const Color(0xffE9EDF2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              minimumSize: const Size(343, 45),
                            ),
                            child: const Text(
                              'Register',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF5F6979),
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                height: 0.08,
                                letterSpacing: -0.36,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already a member? ',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Nsa',
                                color: Colors.black87,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1b345b),
                                ),
                              ),
                            ),
                          ],
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
    super.key,
    required this.number,
    required this.active,
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
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 1,
      color: color,
    );
  }
}
