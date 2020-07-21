import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: new Image.network(
          'https://static.699pic.com/images/index/logo2.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
