import 'dart:math';

import 'package:flutter/material.dart';

class Calculate {
  static double ans;
  double weight, height, age;
  Calculate({this.height, this.weight, this.age});

  String calculateValue() {
    ans = weight / (pow((height / 100), 2));

    return ans.toStringAsFixed(1);
  }

  String catagory() {
    if (ans < 18.5) {
      return "Underweight";
    } else if (ans >= 18.5 && ans < 25) {
      return "Normal";
    } else if (ans >= 25 && ans < 30) {
      return "Overweight";
    } else if (ans >= 30 && ans < 35) {
      return "Obese";
    } else if (ans >= 35 && ans < 40) {
      return "Severely Obese";
    } else if (ans >= 40) {
      return "Very Severely Obese";
    }
  }

  List color1() {
    if (ans < 18.5) {
      return [
        Colors.orange.withOpacity(0.4),
        Colors.orange,
        Colors.orange,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black
      ];
    } else if (ans >= 18.5 && ans < 25) {
      return [
        Colors.green.withOpacity(0.4),
        Colors.green,
        Colors.black,
        Colors.green,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black
      ];
    } else if (ans >= 25 && ans < 30) {
      return [
        Colors.red.withOpacity(0.4),
        Colors.red,
        Colors.black,
        Colors.black,
        Colors.red,
        Colors.black,
        Colors.black,
        Colors.black
      ];
    } else if (ans >= 30 && ans < 35) {
      return [
        Colors.red.withOpacity(0.4),
        Colors.red,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.red,
        Colors.black,
        Colors.black
      ];
    } else if (ans >= 35 && ans < 40) {
      return [
        Colors.red.withOpacity(0.4),
        Colors.red,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.red,
        Colors.black
      ];
    } else if (ans >= 40) {
      return [
        Colors.red.withOpacity(0.4),
        Colors.red,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.red
      ];
    }
  }
}
