import 'package:flutter/material.dart';
import 'first_page.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "text",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FirstPage(),
    );
  }
}
