// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  String loginpage = "Login Page";

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          loginpage,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
