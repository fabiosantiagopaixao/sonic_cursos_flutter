import 'package:flutter/material.dart';
import 'package:email_slidable/email_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch:  Colors.blueGrey,
    ),
    home: EmailScreen(),
  ));
}
