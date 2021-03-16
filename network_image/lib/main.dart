import 'package:flutter/material.dart';

import 'image_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Imagem da URL',
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: ImageScreen(),
  ));
}

