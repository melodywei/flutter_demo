import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridViewDemo'),
      ),
      body: new GridView.count(
        crossAxisCount: 3,
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 30.0,
        children: getItems(),
      ),
    );
  }

  List<Widget> getItems() {
    List<Widget> res = [];
    for (int i = 0; i < 12; ++i) {
      res.add(new Text(i.toString()));
    }
    return res;
  }
}
