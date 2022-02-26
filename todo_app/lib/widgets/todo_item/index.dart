import 'package:flutter/material.dart';
import 'package:todo_app/interfaces/index.dart';
import 'package:todo_app/pages/post.dart';
// styles
import 'styles.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key, required this.post}) : super(key: key);

  final IPost post;

  @override
  Widget build(BuildContext context) {
    // * Dismissible
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PostPage(post: post)),
        )
      },
      child: Container(
          padding: const EdgeInsets.all(20),
          child: Text(post.title,
              overflow: TextOverflow.ellipsis, style: textStyle)),
    );
  }
}
