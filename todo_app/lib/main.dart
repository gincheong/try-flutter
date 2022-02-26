import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// widgets
import 'package:todo_app/widgets/todo_item/index.dart';
// interfaces
import 'package:todo_app/interfaces/index.dart';
import 'package:todo_app/api/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Post with jsonplaceholder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<IPost> postItems = [];

  @override
  void initState() {
    super.initState();
    loadDataFromServer();
  }

  void loadDataFromServer() async {
    const path = '/posts';

    final url = Uri.https(apiEndPoint, path);

    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<IPost> result = jsonDecode(response.body)
          .map<IPost>((each) => IPost.fromJson(each))
          .toList();

      setState(() {
        postItems = result.sublist(0, 10);
      });
    } else {
      print('statusCode: $response.statusCode');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Container(
                margin: const EdgeInsets.only(bottom: 70),
                child: ListView(
                    children: ListTile.divideTiles(
                        color: Colors.black38,
                        context: context,
                        tiles:
                            Iterable<int>.generate(postItems.length).map((idx) {
                          return PostItem(post: postItems[idx]);
                        })).toList()))));
  }
}
