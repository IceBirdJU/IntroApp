import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/basic.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int group = 0;
  void roll() {
    setState(() {
      group = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('Welcome to Hogwarts!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Image(image: AssetImage('images/$group.png')))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('images/0.jpg'))))
              ],
            ),
            RaisedButton(
              onPressed: roll,
              child: Text(
                'Play',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
