// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
            child: SingleChildScrollView(
          child: Column(children: [
            Image.asset(
              "assets/images/a.png",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/b.png",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/c.png",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/d.png",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/e.png",
              fit: BoxFit.cover,
            ),
          ]),
        )));
  }
}
