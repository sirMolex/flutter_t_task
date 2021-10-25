import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
          255,
          //The transparency is always 255 which gives us the RGB color depth.
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => changeColor(),
      child: Container(
        alignment: Alignment.center,
        color: _color,
        child: const Text(
          "Hey there",
          style: TextStyle(
              fontSize: 50,
              color: Colors.black,
              decoration: TextDecoration.none),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
