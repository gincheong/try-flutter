import 'package:flutter/material.dart';
// widgets
import 'widgets/my_app_bar/my_app_bar.dart';
import 'widgets/feed/feed.dart';
import 'widgets/my_bottom_app_bar/my_bottom_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter - Instagram',
      home: Scaffold(
        appBar: MyAppBar(
          notificationCount: 5,
        ),
        body: Center(child: Feed()),
        bottomNavigationBar: MyBottomAppBar(),
      ),
    );
  }
}
