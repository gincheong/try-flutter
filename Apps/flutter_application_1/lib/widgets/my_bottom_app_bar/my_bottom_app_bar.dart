import 'package:flutter/material.dart';
// widgets
import 'bottom_app_bar_icon_button.dart';

class MyBottomAppBar extends StatefulWidget {
  const MyBottomAppBar({Key? key}) : super(key: key);

  @override
  _MyBottomAppBarState createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  int selectedIconIndex = 0;

  List<IconData> iconNames = [
    Icons.home,
    Icons.search,
    Icons.camera_alt_outlined,
    Icons.favorite_border,
    Icons.people_alt
  ];

  void onPressedIcon(int index) {
    setState(() {
      selectedIconIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Row(
            children: Iterable<int>.generate(iconNames.length)
                .map((index) => BottomAppBarIconButton(
                    iconName: iconNames[index],
                    isActive: index == selectedIconIndex,
                    onPressed: () => onPressedIcon(index)))
                .toList()));
  }
}
