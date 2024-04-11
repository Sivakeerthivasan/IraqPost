import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Iraq.png'),
              const SizedBox(
                  height:
                      10), // Adjust the height of the space between the image and the text
              const Text(
                'POWERED BY BANAN',
                style: TextStyle(
                  color: Color.fromARGB(255, 8, 88, 17),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                  height:
                      20), // Adjust the height of the space between the two text widgets
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'welcome to Iraq Post and ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'enjoy ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'our service',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center, // Center-align the text
                maxLines: 4, // Limit text to four lines
                overflow:
                    TextOverflow.ellipsis, // Use ellipsis (...) for overflow
              ),
              const SizedBox(height: 20), // Add space below the text widget
              ElevatedButton(
                onPressed: () {
                  // Add your navigation logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 8, 49, 111), // Set button color to dark blue
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add space below the Register button
              ElevatedButton(
                onPressed: () {
                  // Add your navigation logic here
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                        color: Color.fromARGB(
                            255, 12, 6, 118)) // Set button color to white
                    ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 8, 49, 111)),
                  ),
                ),
              ),
              const SizedBox(height: 10), 
              GestureDetector(
                onTap: () {
                  
                },
                child: const Text(
                  'Continue as a guest',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 8, 49, 111),
                    decoration:
                        TextDecoration.underline, 
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
