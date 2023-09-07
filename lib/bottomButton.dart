import 'package:flutter/material.dart';
import 'consts.dart';
import 'myCard.dart';

class bottomButton extends StatelessWidget {
  bottomButton({Key? key, required this.onTap, required this.buttonText})
      : super(key: key);
  final VoidCallback onTap;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: myCard(
        addedColor: containerToCalculate,
        myChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: klastColStyle,
            ),
          ],
        ),
        onPressed: onTap,
      ),
    );
  }
}
