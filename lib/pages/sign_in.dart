import 'package:flutter/material.dart';
import 'package:login_page_flutter/utils/colors.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          backgroundColor2,
          backgroundColor2,
          backgroundColor4,
        ])),
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                'Hello Again!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 37,
                    color: textColor1),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Welcome back! you've \nbeen missed!",
                style: TextStyle(fontSize: 27, height: 1.2, color: textColor2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
