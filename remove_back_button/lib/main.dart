import 'package:flutter/material.dart';
import 'package:remove_back_button/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    void _openSecondScreen(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return SecondScreen();
      }));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Second Screen"),
          onPressed: () => _openSecondScreen(),
        ),
      ),
    );
  }
}
