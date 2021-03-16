import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../email.dart';

class VerticalListItem extends StatelessWidget {
  VerticalListItem(this.item);

  final Email item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Slidable.of(context)?.renderingMode == SlidableRenderingMode.none
              ? Slidable.of(context)?.open()
              : Slidable.of(context)?.close(),
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: Icon(
            Icons.email,
            color: item.color,
            size: 30,
          ),
          title: Text(item.subject),
          subtitle: Text(item.from),
        ),
      ),
    );
  }
}
