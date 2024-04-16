import 'dart:math';

import 'package:binder/binder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_binder_example/logics/login_logic.dart';
import 'package:flutter_binder_example/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final login = context.watch(loginRef);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(labelText: "Usuário"),
                  onChanged: (value) =>
                      context.use(loginLogicRef).setUserName(value),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Senha"),
                  onChanged: (value) =>
                      context.use(loginLogicRef).setPassword(value),
                ),
              ),
              TextButton(onPressed: login.hasError ? null : () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen(),));
              }, child: Text("Login"))
            ],
          ),
        ),
      ),
      bottomNavigationBar: (login.hasError ? Container(
        color: Colors.red,
        padding: EdgeInsets.all(10),
        child: Text(login.errorMessage, style: TextStyle(color: Colors.white),),
      ) : null),
    );
  }
}
