import 'package:flutter/material.dart';

class BottomAppBarIconButton extends StatelessWidget {
  const BottomAppBarIconButton(
      {Key? key,
      required this.iconName,
      required this.isActive,
      required this.onPressed})
      : super(key: key);

  final IconData iconName;
  final bool isActive;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: IconButton(
            onPressed: onPressed,
            icon:
                Icon(iconName, color: isActive ? Colors.black : Colors.grey)));
  }
}
