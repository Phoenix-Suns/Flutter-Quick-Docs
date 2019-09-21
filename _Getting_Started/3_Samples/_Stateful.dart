import 'package:flutter/material.dart';

class StackLayoutPage extends StatefulWidget {
  @override
  _StackLayoutPageState createState() => _StackLayoutPageState();
}

class _StackLayoutPageState extends State<StackLayoutPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Layout"),
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView(
          children: <Widget>[
            
          ]
        ),
      ),
    );
  }
}
