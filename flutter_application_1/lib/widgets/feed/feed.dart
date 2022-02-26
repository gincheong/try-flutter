import 'package:flutter/material.dart';
// widgets
import 'feed_header.dart';
import 'feed_image.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FeedHeader(userName: 'chchoitoi'),
        FeedImage(),
      ],
    );
  }
}
