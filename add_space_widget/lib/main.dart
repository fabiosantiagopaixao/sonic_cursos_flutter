import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Espaço entre Widgets"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.redAccent,
              child: Center(
                  child: Text(
                "Container 1",
                style: TextStyle(color: Colors.white, fontSize: 30),
              )),
            ),
            SizedBox(height: 50,),
            Container(
              width: 250,
              height: 250,
              color: Colors.redAccent,
              child: Center(
                  child: Text(
                "Container 2",
                style: TextStyle(color: Colors.white, fontSize: 30),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
