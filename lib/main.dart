import 'package:flutter/material.dart';
import 'package:first_app/gradient_conatiner.dart';

const colors = [Colors.blue, Colors.purple];
void main() {
  runApp(const MaterialApp(home: Scaffold(body: GradientContainer(colors))));
}
