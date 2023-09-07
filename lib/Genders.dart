import 'package:flutter/material.dart';
import 'consts.dart';

class Genders extends StatelessWidget {
  final Widget myGender;
  final String label;
  const Genders({required this.myGender, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [myGender, addedSizedBox, Text(label, style: headers)],
    );
  }
}
