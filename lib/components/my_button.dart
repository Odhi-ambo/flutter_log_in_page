import 'package:flutter/material.dart';
import 'package:login_page_flutter/utils/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  void Function() onTap;
  MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(color: primaryColor),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: backgroundColor1),
          ),
        ),
      ),
    );
  }
}
