import 'package:chat_app/widgets/my_button.dart';
import 'package:chat_app/widgets/my_input_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Optional: you can create some controller variables to handle text input if needed

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login to your account',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: screenWidth / 1.5, // Set the width for the logo
              child: Image.asset('assets/images/logo.png'),
            ),
            const SizedBox(height: 20),

            // Adjusted the width of the TextField
            InputText(
              textInputType: TextInputType.emailAddress,
              screenWidth: screenWidth,
              textInput: "Enter your email",
              icon: Icons.email,
              onChangeInput: (value) {
                // You can handle the input change here
              },
              obscureTextBool: false,
            ),
            InputText(
              textInputType: TextInputType.text,
              screenWidth: screenWidth,
              textInput: "Enter your password",
              icon: Icons.password,
              onChangeInput: (value) {
                // You can handle the input change here
              },
              obscureTextBool: true,
            ),
            MyButton(colorButton: Colors.blue[400], textButton: 'Login', onPressedButton: (){}, screenWidth: screenWidth)
          ],
        ),
      ),
    );
  }
}
