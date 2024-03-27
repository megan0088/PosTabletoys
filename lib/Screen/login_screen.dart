// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tabletoys/Color/colours.dart';
import 'package:tabletoys/Widget/my_button.dart';
import 'package:tabletoys/Widget/my_textfield.dart';
import 'package:tabletoys/Widget/square_tile.dart';
import 'package:tabletoys/Services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();

  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.asset(
                'asset/image/logo.png',
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: null,
                hintText: 'ID',
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: null,
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(
                onTap: signInWithEmailAndPassword,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: primaryAccent,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.symmetric(horizontal: 10.0),
                      child: Text('Or Continue With'),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: primaryAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SquareTile(imagetPath: 'asset/image/google.png')
            ],
          ),
        ),
      ),
    );
  }
}
