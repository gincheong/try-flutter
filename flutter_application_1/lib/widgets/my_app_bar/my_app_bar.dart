import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key, required this.notificationCount})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  final int notificationCount;

  @override
  final Size preferredSize; // default is 56.0

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  void onPressedInbox() {
    print('onPressed Inbox Icon');
  }

  @override
  Widget build(BuildContext context) {
    String notiNumber = widget.notificationCount.toString();

    return AppBar(
        title: const Text('Instagram', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        shadowColor: null,
        actions: <Widget>[
          Badge(
              toAnimate: false,
              shape: BadgeShape.circle,
              badgeColor: Colors.red.shade400,
              badgeContent:
                  Text(notiNumber, style: const TextStyle(color: Colors.white)),
              position: BadgePosition.topEnd(end: 2, top: 0),
              child: IconButton(
                  icon: const Icon(Icons.inbox),
                  color: Colors.black,
                  iconSize: 32,
                  onPressed: onPressedInbox))
        ]);
  }
}
