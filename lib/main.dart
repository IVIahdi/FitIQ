// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'input.dart';
const primaryColor = Color(0xff850A0A);
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData.dark()
    );
  }
}