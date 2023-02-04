import 'package:flutter/material.dart';
import 'package:pakhi_confectionary/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/Login",
      routes: {
        "/": (context) => const LoginPage(),
        "/Home": (context) => HomePage(),
        "/Login": (context) => const LoginPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
