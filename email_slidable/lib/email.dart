import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Email {
  int index;
  String subject;
  String from;
  Color color;

  Email({this.index, this.subject, this.from, this.color});

  static List<Email> getListEmails() {
    List<Email> locations = [];

    for(int i = 1; i < 31; i++){
      Email email = Email(
          index: i,
          subject: "Email Teste ${i}",
          from: "email${i}@teste.com",
          color: _getColor(i)
      );

      locations.add(email);
    }
    return locations;
  }


  static Color _getColor(int index) {
    switch (index % 4) {
      case 1:
        return Colors.green;
      case 2:
        return Colors.blue;
      case 3:
        return Colors.indigoAccent;
      case 4:
        return Colors.red;
      default:
        return null;
    }
  }
}
