import 'package:flutter/material.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),
                  _GreenTick(),
                  const SizedBox(width: 10),
                  _Line(),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 38, 128, 206),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Text(
                      'Verify email',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 13, 50, 144),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  _Line(),
                  const SizedBox(width: 10),
                  const _CircularIndicator(number: '3', active: true),
                  const SizedBox(width: 10),
                  _Line(),
                  const SizedBox(width: 10),
                  const _CircularIndicator(number: '4', active: true),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/Iraqpost.png',
                      width: 100,
                      height: 40,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Verify Your Email',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Let's verify your email address.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _OTPBox(),
                              const SizedBox(width: 10),
                              _OTPBox(),
                              const SizedBox(width: 10),
                              _OTPBox(),
                              const SizedBox(width: 10),
                              _OTPBox(),
                              const SizedBox(width: 10),
                              _OTPBox(),
                              const SizedBox(width: 10),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                // Add your logic here for resending verification email
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.refresh,
                                        color:
                                            Color.fromARGB(255, 19, 27, 137)),
                                    SizedBox(width: 5),
                                    Text(
                                      'Resend the verification email',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 19, 27, 137),
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 150),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                // Add your logic here for continuing to email app
                              },
                              child: const Text(
                                'Continue to email app',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 19, 27, 137),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              onPressed: () {
                                // Add your logic here for the Continue button
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                    255,
                                    19,
                                    27,
                                    137), // Set button background color to dark blue
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Set border radius
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(
                                    BorderSide.strokeAlignOutside),
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15, // Set text color to white
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
          color: Colors.green,
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
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? Colors.white : Colors.grey,
        border: Border.all(
          color: Colors.black, // Set border color to black
        ),
      ),
      child: Center(
        child: Text(
          number!,
          style: const TextStyle(
            color: Colors.black, // Set text color to black
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

class _Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 1,
      color: const Color.fromARGB(255, 8, 14, 20),
    );
  }
}

class _OTPBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
        onChanged: (value) {},
      ),
    ); 
  }
}
