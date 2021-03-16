import 'package:flutter/material.dart';

import 'car_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "Car demo",
    theme: ThemeData(
      primaryColor: Colors.green,
    ),
    home: CarScreen(),
  ));
}
