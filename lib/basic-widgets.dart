import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.blue[500]),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null,
            ),
            Expanded(
              child: title,
            ),
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            )
          ],
        ));
  }
}

class BasicWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Widgets'),
        ),
        body: Column(children: <Widget>[
          MyAppBar(
            title: Text(
              'Basic Widgets',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
              child: Center(
            child: Text('Hello, Basic Widgets!'),
          ))
        ]));
  }
}
