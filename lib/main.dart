import 'package:flutter/material.dart';
import 'tab_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '微信',
      theme: ThemeData(
//        primarySwatch: Color(0xff303030),


      primaryColor: Color(0xff303030),
      ),
      home: TabNavigationBar(),
    );
  }
}

