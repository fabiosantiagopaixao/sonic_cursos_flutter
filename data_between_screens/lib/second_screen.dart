import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Map data = ModalRoute.of(context).settings.arguments;
    String name = data["name"];

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () => Navigator.pushReplacementNamed(context, "/first_screen"),
        ),
        title: Text("Second Screen"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Text("O nome recebido foi: "),
            Text(
              name,
              style: TextStyle(color: Colors.green, fontSize: 30),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
