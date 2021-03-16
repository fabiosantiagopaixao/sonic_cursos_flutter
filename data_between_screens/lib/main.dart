import 'package:data_beteween_screens/second_screen.dart';
import 'package:flutter/material.dart';

import 'first_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "Passar dados entre telas",
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    initialRoute: "/first_screen",
    routes: {
      "/first_screen": (context) => FirstScreen(),
      "/second_screen": (context) => SecondScreen(),
    },
  )
  );
}

