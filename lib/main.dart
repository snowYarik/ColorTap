import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _RandomColorState();
  }
}



class _RandomColorState extends State<MyApp> {
  final Random _random = Random();
  Color _color = Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: _color,
        appBar: AppBar(
          title: Text("Color Tap"),
        ),
        body: InkWell(
          onTap: changeColor,
          child: Center(
            child: new Container(
                child: Text(
              "Hey There",
              style: TextStyle(fontSize: 18),
            )),
          ),
        ),
      ),
    );
  }

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(255),
        _random.nextInt(255),
        _random.nextInt(255),
        _random.nextInt(255),
      );
    });
  }
}
