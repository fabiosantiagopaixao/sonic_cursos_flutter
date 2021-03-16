import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'componentes/horizontal_list_item.dart';
import 'componentes/vertical_list_item.dart';
import 'email.dart';

class EmailScreen extends StatefulWidget {
  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  SlidableController slidableController;
  List<Email> items = Email.getListEmails();

  @protected
  void initState() {
    slidableController = SlidableController(
      onSlideAnimationChanged: handleSlideAnimationChanged,
      onSlideIsOpenChanged: handleSlideIsOpenChanged,
    );
    super.initState();
  }

  Animation<double> _rotationAnimation;
  Color _fabColor = Colors.blue;

  void handleSlideAnimationChanged(Animation<double> slideAnimation) {
    setState(() {
      _rotationAnimation = slideAnimation;
    });
  }

  void handleSlideIsOpenChanged(bool isOpen) {
    setState(() {
      _fabColor = isOpen ? Colors.green : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email"),
      ),
      body: Center(
        child: OrientationBuilder(
          builder: (context, orientation) => _buildList(
              context,
              orientation == Orientation.portrait
                  ? Axis.vertical
                  : Axis.horizontal),
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, Axis direction) {
    return ListView.separated(
      scrollDirection: direction,
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      itemBuilder: (context, index) {
        final Axis slidableDirection =
            direction == Axis.horizontal ? Axis.vertical : Axis.horizontal;
        return _getSlidableWithLists(context, index, slidableDirection);
      },
      itemCount: items.length,
    );
  }

  Widget _getSlidableWithLists(
      BuildContext context, int index, Axis direction) {
    final Email item = items[index];

    return Slidable(
      key: Key(item.subject),
      controller: slidableController,
      direction: direction,
      dismissal: SlidableDismissal(
        child: SlidableDrawerDismissal(),
        onDismissed: (actionType) {
          _showSnackBar(
              context,
              actionType == SlideActionType.primary
                  ? 'Dismiss Archive'
                  : 'Dimiss Delete');
          setState(() {
            items.removeAt(index);
          });
        },
      ),
      actionPane: _getActionPane(item.index),
      actionExtentRatio: 0.25,
      child: direction == Axis.horizontal
          ? VerticalListItem(items[index])
          : HorizontalListItem(items[index]),
      actions: _firstsActionsSlider(),
      secondaryActions: _secondaryActionsSlider(),
    );
  }

  List<Widget> _firstsActionsSlider() {
    return <Widget>[
      IconSlideAction(
        caption: 'Archive',
        color: Colors.blue,
        icon: Icons.archive,
        onTap: () => _showSnackBar(context, 'Archive'),
      ),
      IconSlideAction(
        caption: 'Share',
        color: Colors.indigo,
        icon: Icons.share,
        onTap: () => _showSnackBar(context, 'Share'),
      ),
    ];
  }

  List<Widget> _secondaryActionsSlider() {
    return <Widget>[
      IconSlideAction(
        caption: 'More',
        color: Colors.grey.shade200,
        icon: Icons.more_horiz,
        onTap: () => _showSnackBar(context, 'More'),
        closeOnTap: false,
      ),
      IconSlideAction(
        caption: 'Delete',
        color: Colors.red,
        icon: Icons.delete,
        onTap: () => _showSnackBar(context, 'Delete'),
      ),
    ];
  }

  void _showSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  static Widget _getActionPane(int index) {
    switch (index % 4) {
      case 0:
        return SlidableBehindActionPane();
      case 1:
        return SlidableStrechActionPane();
      case 2:
        return SlidableScrollActionPane();
      case 3:
        return SlidableDrawerActionPane();
      default:
        return null;
    }
  }
}
