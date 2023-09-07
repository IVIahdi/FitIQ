import 'package:flutter/material.dart';

class myCard extends StatelessWidget {
  const myCard(
      {required this.addedColor,
      required this.myChild,
      required this.onPressed});
  final Color addedColor;
  final Widget myChild;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: myChild,
        margin: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: addedColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
