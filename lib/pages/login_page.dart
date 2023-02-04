// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  String loginpage = "Login Page";

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Image.asset(
            "assets/images/login_img.png",
            fit: BoxFit.contain,
          ),
          const Text(
            "Welcome to Pakhi Confectionary Store",
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                backgroundColor: Color.fromARGB(60, 220, 165, 165)),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Home');
                  },
                  child: const Text("Login"),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
