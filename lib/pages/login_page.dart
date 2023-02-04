// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String message = '';
  bool chagebutton = false;
  final _formkey = GlobalKey<FormState>();
  //Move To netx Page
  movetohome(BuildContext context) async {
    setState(() {
      chagebutton = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    await Navigator.pushNamed(context, '/Home');
    setState(() {
      chagebutton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Page"),
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(0, 191, 166, 1),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_img.png",
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 40.0,
            ),
            Text(
              "Welcome $message",
              style: const TextStyle(
                color: Color.fromRGBO(0, 191, 166, 1),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                          icon: Icon(Icons.person_outline_sharp)),
                      onChanged: (value) {
                        message = value;
                        setState(() {});
                      },
                      validator: (value) => value.toString().isEmpty
                          ? "Cannot be null UserName"
                          : null,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                          icon: Icon(Icons.key_rounded)),
                      validator: (value) => value.toString().isEmpty
                          ? "Cannot be null Password"
                          : null,
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    InkWell(
                      onTap: () => movetohome(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: chagebutton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 191, 166, 1),
                          borderRadius:
                              BorderRadius.circular(chagebutton ? 25 : 8),
                        ),
                        child: chagebutton
                            ? const Icon(Icons.done)
                            : const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
