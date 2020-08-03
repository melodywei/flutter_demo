import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Column(
        children: <Widget>[
          new Text(
            '红色，黑色删除线 + 25号',
            style: new TextStyle(
              color: const Color(0xffff00000),
              decoration: TextDecoration.lineThrough,
              decorationColor: const Color(0xff000000),
              fontSize: 25.0,
            ),
          ),
          new Text(
            '橙色，下划线 + 24号',
            style: new TextStyle(
              color: const Color(0xffff00000),
              decoration: TextDecoration.underline,
              decorationColor: const Color(0xffff9900),
              fontSize: 24.0,
            ),
          ),
          new Text(
            '虚线，上划线，斜体 + 23号',
            style: new TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 23.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          new Text(
            '加粗 + 24号',
            style: new TextStyle(
              decorationStyle: TextDecorationStyle.solid,
              fontSize: 24.0,
              letterSpacing: 6.0,
            ),
          ),
        ],
      ),
    );
  }
}
