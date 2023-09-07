import 'dart:math';
import 'package:flutter/material.dart';

class BMIBrain {
  final int height;
  final int weight;
  late double _resultBMI;
  BMIBrain({required this.weight, required this.height});

  String calculate() {
    _resultBMI = weight / pow((height / 100), 2);
    return _resultBMI.toStringAsFixed(1);
  }

  String getResult() {
    if (_resultBMI >= 25) {
      return 'Overweight';
    } else if (_resultBMI > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getDescription() {
    if (_resultBMI >= 25) {
      return 'Start with small, achievable goals to help make a lasting lifestyle change. Focus on eating healthy and exercising regularly. Find ways to be active that you enjoy, such as walking, swimming or biking.'
          ' Consult with a doctor or dietitian for support'
          ' if needed.';
    } else if (_resultBMI > 18.5) {
      return 'Be kind to yourself and others.';
    } else {
      return 'Try to incorporate'
          ' more nutrient-dense foods like eggs, nuts and'
          ' seeds, and lean proteins into your diet to help'
          ' with weight gain. Also, exercise regularly'
          ' as it can help boost'
          ' calorie intake as well'
          ' as improve overall muscle mass';
    }
  }

  Color getColor() {
    if (_resultBMI >= 25) {
      return Colors.red;
    } else if (_resultBMI > 18.5) {
      return Colors.green;
    } else {
      return Colors.yellow;
    }
  }
}
