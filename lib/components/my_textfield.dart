import 'package:flutter/material.dart';
import 'package:login_page_flutter/utils/colors.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  const MyTextfield(
      {super.key, required this.hintText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textColor2),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: textColor2),
      ),
    );
  }
}
