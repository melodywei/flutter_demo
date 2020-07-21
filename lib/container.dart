import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('容器示例'),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.white,
            border: new Border.all(
              color: Colors.grey,
              width: 2.0,
            ),
            borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
          ),
          child: Text(
            'Flutter',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
