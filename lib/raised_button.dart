import 'package:flutter/material.dart';

class RaisedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RaisedButtonDemo'),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            print('按下');
          },
          child: new Text("RaisedButtonDemo"),
        ),
      ),
    );
  }
}
