import 'package:bmi/myCard.dart';
import 'package:flutter/material.dart';
import 'consts.dart';
import 'bottomButton.dart';

class myResult extends StatelessWidget {
  myResult(
      {required this.BMIDescription,
      required this.BMIResult,
      required this.calculatedResult,
      required this.bmiColor});

  final String calculatedResult;
  final String BMIResult;
  final String BMIDescription;
  final Color bmiColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                child: Text(
                  "YOUR RESULT",
                  style: kYourResultStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: myCard(
                addedColor: Colors.black87,
                myChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      BMIResult.toUpperCase(),
                      style: TextStyle(
                          color: bmiColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      calculatedResult,
                      style: kResultNumber,
                    ),
                    Text(
                      BMIDescription,
                      style: kLastResult,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: bottomButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  buttonText: 'RE-CALCULATE'),
            )
          ],
        ),
      ),
    );
  }
}
