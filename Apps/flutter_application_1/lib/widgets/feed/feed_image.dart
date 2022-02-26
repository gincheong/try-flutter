import 'package:flutter/material.dart';

class FeedImage extends StatelessWidget {
  const FeedImage({Key? key}) : super(key: key);

  static const imageUrl =
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg';

  void onPressedLike() {
    print('onPressed like button');
  }

  void onPressedMessage() {
    print('onPressed message button');
  }

  void onPressedShare() {
    print('onPressed share button');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(image: NetworkImage(imageUrl)),
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(width: 1.5, color: Colors.grey.shade300),
          )),
          child: Row(
            children: [
              IconButton(
                  onPressed: onPressedLike,
                  icon: const Icon(Icons.favorite_border)),
              IconButton(
                  onPressed: onPressedLike,
                  icon: const Icon(Icons.chat_bubble_outline)),
              IconButton(
                  onPressed: onPressedLike, icon: const Icon(Icons.ios_share))
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Icon(Icons.favorite, size: 20),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('128 likes',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )
              ],
            ))
      ],
    );
  }
}
