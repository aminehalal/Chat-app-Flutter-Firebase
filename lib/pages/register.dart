import 'package:chat_app/widgets/myButton.dart';
import 'package:chat_app/widgets/myInputText.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Optional: you can create some controller variables to handle text input if needed
  final TextEditingController _emailController = TextEditingController();

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
              'Register your account',
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
              screenWidth: screenWidth,
              textInput: "Enter your email",
              icon: Icons.email,
              onChangeInput: (value) {
                // You can handle the input change here
              },
            ),
            InputText(
              screenWidth: screenWidth,
              textInput: "Enter your password",
              icon: Icons.password,
              onChangeInput: (value) {
                // You can handle the input change here
              },
            ),
            MyButton(colorButton: Colors.blue[400], textButton: 'Register', onPressedButton: (){}, screenWidth: screenWidth)
          ],
        ),
      ),
    );
  }
}
