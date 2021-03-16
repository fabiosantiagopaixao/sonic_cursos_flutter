import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  final myControllerName = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void _openSecondScreen(){
      Navigator.pushReplacementNamed(
          context,
          "/second_screen",
          arguments: {"name": myControllerName.value.text}
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Entre com seu nome",
                hintStyle: TextStyle(color: Colors.grey[500]),
              ),
              controller: myControllerName,
            ),
            TextButton(
              onPressed: () => _openSecondScreen(),
              child: Text(
                "Enviar Dados",
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
