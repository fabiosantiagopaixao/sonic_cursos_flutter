import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Imagem de uma URL"),
      ),
      body: Center(
        child: Container(
          child: Center(
            child: Text(
              "Rio de Janeiro",
              style: TextStyle(color: Colors.red, fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://cdn.pixabay.com/photo/2016/04/03/02/28/rio-1303951_960_720.jpg"),
              fit: BoxFit.cover
            )
          ),
        ),
      ),
    );
  }
}
