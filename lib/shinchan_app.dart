import 'package:flutter/material.dart';
import 'package:shinchan/page_opening.dart';
import 'package:shinchan/theme/color_schemes.dart';

class ShinchanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shinchan',
      theme: ThemeData(
        colorScheme: darkColorScheme,
      ),
      home: OpeningPage(),
    );
  }
}
