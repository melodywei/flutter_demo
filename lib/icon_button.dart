import 'package:flutter/material.dart';

class IconButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButtonDemo'),
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
