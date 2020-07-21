import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon'),
      ),
      body: new Icon(Icons.ac_unit, color: Colors.green[500], size: 80.0),
    );
  }
}
