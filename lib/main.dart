import 'package:flutter/material.dart';
import 'package:tabletoys/Models/Product_model.dart';
import 'package:tabletoys/Models/collection_model.dart';
import 'package:tabletoys/Models/drawer_model.dart';
import 'package:tabletoys/Screen/login_screen.dart';
import 'Color/colours.dart';

// ignore: prefer_const_constructors
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: primary,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: LoginScreen(),
    );
  }
}
