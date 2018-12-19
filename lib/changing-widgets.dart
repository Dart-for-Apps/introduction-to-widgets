import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget'),
        ),
        body: Row(
          children: <Widget>[
            RaisedButton(
              onPressed: _increment,
              child: Text('Increment'),
            ),
            Text('Count $_counter'),
          ],
        ));
  }
}
