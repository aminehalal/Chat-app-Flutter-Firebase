import 'package:chat_app/widgets/myButton.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // Get the screen width and height using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Get Started',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
                color: Colors.black,
              ),
            ),
            const Text(
              'Start with register or sign in',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: screenWidth / 1.5,
              child: Image.asset('assets/images/logo.png'),
            ),
            const SizedBox(height: 20),
            MyButton(
              colorButton: Colors.red[400],
              textButton: "Sign in",
              onPressedButton: () {
                Navigator.pushNamed(context, 'signin');
              },
              screenWidth: screenWidth,
            ),
            MyButton(
              colorButton: Colors.blue[300],
              textButton: "Sign up",
              onPressedButton: () {
                Navigator.pushNamed(context, 'register');
              },
              screenWidth: screenWidth,
            ),
          ],
        ),
      ),
    );
  }
}
