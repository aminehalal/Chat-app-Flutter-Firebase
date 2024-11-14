import 'package:chat_app/widgets/my_button.dart';
import 'package:chat_app/widgets/my_input_text.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Optional: you can create some controller variables to handle text input if needed
  final _auth = FirebaseAuth.instance;

  late String email;
  late String passWord;

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
              textInputType: TextInputType.emailAddress,
              screenWidth: screenWidth,
              textInput: "Enter your email",
              icon: Icons.email,
              onChangeInput: (value) {
                email = value;
              },
              obscureTextBool: false,
            ),
            InputText(
              textInputType: TextInputType.text,
              screenWidth: screenWidth,
              textInput: "Enter your password",
              icon: Icons.password,
              onChangeInput: (value) {
                passWord = value;
              },
              obscureTextBool: true,
            ),
            MyButton(
                colorButton: Colors.blue[400],
                textButton: 'Register',
                onPressedButton: () async {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: passWord);
                    Navigator.pushNamed(context, 'chat');
                    print(newUser);
                  } catch (e) {
                    print(e);
                  }
                },
                screenWidth: screenWidth)
          ],
        ),
      ),
    );
  }
}
