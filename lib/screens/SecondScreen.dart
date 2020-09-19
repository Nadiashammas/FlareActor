import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: FlareActor(
        "images/Teddy.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        animation: "success",

        //animation : test / fail / success / idle
      ),
    );
  }
}
