import 'package:flutter/material.dart';

class RaisedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon'),
      ),
      body: new Center(
        child: new IconButton(
          icon: Icon(Icons.volume_up, size: 48.0),
          tooltip: '按下',
          onPressed: () {
            print('按下');
          },
        ),
      ),
    );
  }
}
