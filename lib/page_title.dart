import 'package:flutter/material.dart';

class TitlePage extends StatefulWidget {
  TitlePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}
