import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:todo_app/interfaces/index.dart';
import 'package:todo_app/widgets/comment_item/index.dart';
import 'package:todo_app/widgets/todo_item/styles.dart';
import 'package:todo_app/api/index.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key, required this.post}) : super(key: key);

  final IPost post;

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List<IComment> comments = [];

  @override
  void initState() {
    super.initState();
    loadComments();
  }

  void loadComments() async {
    const path = '/comments';
    final url = Uri.https(apiEndPoint, path);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<IComment> result = jsonDecode(response.body)
          .map<IComment>((each) => IComment.fromJson(each))
          .toList();

      setState(() {
        comments = result.sublist(0, 10);
      });
    } else {
      print('statusCode: $response.statusCode');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Post Viewer'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(widget.post.title, style: titleTextStyle),
              const Divider(color: Colors.black54),
              SizedBox(
                height: 300,
                child: Text(widget.post.body, style: bodyTextStyle),
              ),
              SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: comments.length,
                    itemBuilder: (context, idx) {
                      return CommentItem(comment: comments[idx]);
                    },
                  ))
            ]),
          ),
        ));
  }
}
