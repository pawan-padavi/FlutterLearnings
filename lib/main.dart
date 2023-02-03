import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.brown,
          child: ListView(padding: const EdgeInsets.all(0), children: const [
            UserAccountsDrawerHeader(
                accountName: Text("Pawansing Padavi"),
                accountEmail: Text("pawansing@gmail.com")),
          ]),
        ),
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text("Pakhi Confectionary"),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
