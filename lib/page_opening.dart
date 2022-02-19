import 'package:flutter/material.dart';

const topColor = Color.fromARGB(255, 240, 130, 163);
const bottomColor = Color.fromARGB(255, 242, 242, 122);
const titleColor = Color.fromARGB(255, 97, 3, 94);
const titleStyle = TextStyle(
    color: titleColor,
    fontSize: 36,
    decoration: TextDecoration.none,
    fontWeight: FontWeight.bold);

class OpeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
        colors: [
          topColor,
          bottomColor,
        ],
      )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('かいはつとちゅうで',
                    textAlign: TextAlign.start,
                    style: titleStyle.copyWith(fontSize: 16)),
                Text('開発途中で', textAlign: TextAlign.start, style: titleStyle),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text('だいたいプレビュー使わなくなるゾ', style: titleStyle),
            ),
          ],
        ),
      ),
    );
  }
}
