import 'package:flutter/material.dart';
import 'package:login_page_flutter/components/my_button.dart';
import 'package:login_page_flutter/components/my_textfield.dart';
import 'package:login_page_flutter/pages/sign_in.dart';
import 'package:login_page_flutter/utils/colors.dart';

class RegistrationPage extends StatefulWidget {
  final void Function()? onTap;
  const RegistrationPage({super.key, required this.onTap});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_outlined,
              size: 100,
              color: textColor2,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text('Let us sign you in'),
            const SizedBox(
              height: 25,
            ),
            const MyTextfield(
              hintText: 'email',
              obscureText: false,
            ),
            const SizedBox(
              height: 15,
            ),
            const MyTextfield(
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            const MyTextfield(
              hintText: 'Confirm Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              text: 'Register',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Registered?',
                  style: TextStyle(color: textColor2),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    ' Sign In',
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
