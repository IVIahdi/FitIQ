// ignore_for_file: prefer_const_constructors
import 'package:bmi/myCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Genders.dart';
import 'consts.dart';
import 'myResult.dart';
import 'bottomButton.dart';
import 'package:bmi/BMIBrain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.female;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                child: myCard(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  addedColor: selectedGender == Gender.male
                      ? selectedGenderColor
                      : boxsColor,
                  myChild: Genders(
                      myGender: Icon(
                        FontAwesomeIcons.mars,
                        size: 60,
                      ),
                      label: 'MALE'),
                ),
              ),
              Expanded(
                child: myCard(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  addedColor: selectedGender == Gender.female
                      ? selectedGenderColor
                      : boxsColor,
                  myChild: Genders(
                    myGender: Icon(
                      FontAwesomeIcons.question,
                      size: 60,
                    ),
                    label: 'OTHER',
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                child: myCard(
                  addedColor: boxsColor,
                  myChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: headers,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            inHeight.toString(),
                            style: numbersLabelStyle,
                          ),
                          Text(
                            'cm',
                            style: headers,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.black,
                            inactiveTrackColor: Colors.black38,
                            thumbColor: Colors.black,
                            overlayColor: Colors.white10,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 25)),
                        child: Slider(
                          value: inHeight.toDouble(),
                          onChanged: (double height) {
                            setState(() {
                              inHeight = height.round();
                            });
                          },
                          max: 230,
                          min: 130,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                child: myCard(
                  addedColor: boxsColor,
                  myChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: headers,
                      ),
                      Text(
                        inWeight.toString(),
                        style: numbersLabelStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          myButton(
                            icon2: FontAwesomeIcons.plus,
                            plusminus: () {
                              setState(() {
                                if (inWeight < 200) inWeight += 1;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          myButton(
                            icon2: FontAwesomeIcons.minus,
                            plusminus: () {
                              setState(() {
                                if (inWeight > 0) inWeight -= 1;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: myCard(
                  addedColor: boxsColor,
                  myChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Age',
                        style: headers,
                      ),
                      Text(
                        inAge.toString(),
                        style: numbersLabelStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          myButton(
                            icon2: FontAwesomeIcons.plus,
                            plusminus: () {
                              setState(() {
                                if (inAge < 100) inAge += 1;
                              });
                            },
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          myButton(
                            icon2: FontAwesomeIcons.minus,
                            plusminus: () {
                              setState(() {
                                if (inAge > 1) inAge -= 1;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: bottomButton(
                  buttonText: 'CALCULATE',
                  onTap: () {
                    BMIBrain calculate =
                        BMIBrain(height: inHeight, weight: inWeight);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => myResult(
                                  calculatedResult: calculate.calculate(),
                                  BMIDescription: calculate.getDescription(),
                                  BMIResult: calculate.getResult(),
                                  bmiColor: calculate.getColor(),
                                )));
                  }),
            )
          ]),
        )
      ]),
    );
  }
}
