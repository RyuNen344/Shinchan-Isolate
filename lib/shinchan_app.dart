import 'package:flutter/material.dart';
import 'package:shinchan/page_title.dart';

class ShinchanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shinchan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TitlePage(title: 'Flutter Demo Home Page'),
    );
  }
}
