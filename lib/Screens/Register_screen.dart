import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 38, 128, 206),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 13, 50, 144),
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Add space after the Register text
                  _Line(),
                  const SizedBox(width: 10), // Add space before the line
                  const _CircularIndicator(number: '2', active: true),
                  const SizedBox(width: 10),
                  _Line(),
                  const SizedBox(width: 10), // Add space before the line
                  const _CircularIndicator(number: '3', active: true),
                  const SizedBox(width: 10),
                  _Line(),
                  const SizedBox(width: 10), // Add space before the line
                  const _CircularIndicator(number: '4', active: true),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Add space between the indicators and the image
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/Iraqpost.png', // Provide the path to your image asset
                      width: 100, // Adjust the width as needed
                      height: 40, // Adjust the height as needed
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Let's begin setting up your new account.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.9, // Set width based on screen size
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Enter your mail',
                                prefixIcon: const Icon(Icons.email),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ), // Adjust padding
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 2),
                          SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.9, // Set width based on screen size
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Enter your password',
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.visibility),
                                  onPressed: () {
                                    // Implement toggle visibility
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ), // Adjust padding
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Confirm Password',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 2),
                          SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.9, // Set width based on screen size
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Confirm your password',
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.visibility),
                                  onPressed: () {
                                    // Implement toggle visibility
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ), // Adjust padding
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.9, // Set width based on screen size
                            child: TextButton(
                              onPressed: () {
                                // Add your register logic here
                              },
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.grey[300]!,
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 226, 230, 234),
                                ),
                              ),
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 56, 53, 53),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Already a member? ',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Handle login navigation
                                },
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CircularIndicator extends StatelessWidget {
  final String? number;
  final bool active;

  const _CircularIndicator({super.key, this.number, required this.active});

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
