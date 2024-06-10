import 'package:flutter/material.dart';
import 'package:login_page_flutter/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Authetication Page', home: LoginScreen());
  }
}
