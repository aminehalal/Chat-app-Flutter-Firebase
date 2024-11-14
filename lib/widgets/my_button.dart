import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.colorButton,
    required this.textButton,
    required this.onPressedButton,
    required this.screenWidth,
  });

  final double screenWidth;
  final Color? colorButton;
  final String textButton;
  final VoidCallback onPressedButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: colorButton,
        child: MaterialButton(
          onPressed: () => onPressedButton(),
          elevation: 5,
          minWidth: screenWidth / 1.5,
          height: 50,
          child: Text(
            textButton,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}