import 'package:flutter/material.dart';
import 'package:todo_app/interfaces/index.dart';
import 'package:todo_app/widgets/todo_item/styles.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({Key? key, required this.comment}) : super(key: key);

  final IComment comment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(color: Colors.black54),
        Container(
            margin: const EdgeInsets.all(5),
            child: Text(
              comment.email,
              style: emailTextStyle,
            )),
        Container(
            margin: const EdgeInsets.all(5),
            child: Text(comment.body, style: commentTextStyle))
      ],
    );
  }
}
