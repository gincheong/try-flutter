import 'package:flutter/material.dart';

class FeedHeader extends StatelessWidget {
  const FeedHeader({Key? key, required this.userName}) : super(key: key);

  final String userName;

  static AssetImage profileIcon = const AssetImage('assets/profileIcon.png');

  void onPressedMore() {
    print('onPressed More Icon');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: Row(children: [
        Container(
            margin: const EdgeInsets.only(right: 10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image(
                  image: profileIcon,
                  width: 32,
                  height: 32,
                ))),
        Expanded(child: Text(userName), flex: 1),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: onPressedMore,
        ),
      ]),
    );
  }
}
