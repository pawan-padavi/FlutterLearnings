// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int num = 40;
  String drawerHeader = "Pakhi Confectionary";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(padding: const EdgeInsets.all(0), children: const [
          UserAccountsDrawerHeader(
              accountName: Text("Pawansing Padavi"),
              accountEmail: Text("pawansing@gmail.com"),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 191, 166, 1),
              )),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 191, 166, 1),
        title: Text(drawerHeader),
      ),
      body: Center(
        child: Text(
          "Welcome to $num day of Tutorial",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
