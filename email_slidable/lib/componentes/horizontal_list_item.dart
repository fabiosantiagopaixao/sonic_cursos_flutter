import 'package:flutter/material.dart';

import '../email.dart';

class HorizontalListItem extends StatelessWidget {
  HorizontalListItem(this.item);

  final Email item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 160.0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Icon(
              Icons.email,
              color: item.color,
              size: 30,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                item.subject,
              ),
            ),
          ),
          Divider(
            height: 50,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
