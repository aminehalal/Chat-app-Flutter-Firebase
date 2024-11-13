import 'package:flutter/material.dart';


class InputText extends StatelessWidget {
  const InputText({
    super.key,
    required this.screenWidth,
    required this.textInput,
    required this.icon,
    required this.onChangeInput,
  });

  final String textInput;
  final IconData icon;  // Use IconData type instead of Icon
  final ValueChanged<String> onChangeInput;  // Improved typing for onChangeInput
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: SizedBox(
        width: screenWidth / 1.5, // Set the width to 1.5 times the screen width
        child: TextField(
          onChanged: onChangeInput, // Directly pass onChangeInput without the anonymous function
          decoration: InputDecoration(
            prefixIcon: Icon(icon), // Wrap icon in Icon widget
            labelText: textInput,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8, // Adjust vertical padding
              horizontal: 16, // Default horizontal padding
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14)),
            ),
          ),
        ),
      ),
    );
  }
}
