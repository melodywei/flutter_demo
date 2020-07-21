import 'package:flutter/material.dart';
import 'package:flutter_demo/icon.dart';
import 'package:flutter_demo/image.dart';
import 'package:flutter_demo/text.dart';
import 'package:flutter_demo/icon_button.dart';
import 'view_type.dart';
import 'container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      routes: getroutes(),
      initialRoute: route[ViewType.Home],
    );
  }

  Widget getroute(ViewType type) {
    switch (type) {
      case ViewType.Container:
        return MyContainer();
      case ViewType.Home:
        return MyHomePage();
      case ViewType.Image:
        return ImageDemo();
      case ViewType.Text:
        return TextDemo();
      case ViewType.Icon:
        return IconDemo();
      case ViewType.IconButton:
        return IconButtonDemo();
      default:
        break;
    }
    return null;
  }

  Map<String, WidgetBuilder> getroutes() {
    Map<String, WidgetBuilder> ret = {};
    for (var i = 0; i < ViewType.values.length; ++i) {
      var type = ViewType.values[i];
      ret[route[type]] = (BuildContext context) => getroute(type);
    }
    return ret;
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('home'),
        ),
        body: new ListView(
          children: addItems(),
        ));
  }

  Widget additem(ViewType type) {
    return new ListTile(
        title: Text(route[type]),
        onTap: () {
          print('click ' + type.index.toString());
          if (route[type] != null) {
            Navigator.pushNamed(context, route[type]);
          }
        });
  }

  List<Widget> addItems() {
    List<Widget> ret = [];
    for (var i = 0; i < ViewType.values.length; ++i) {
      var type = ViewType.values[i];

      if (type == ViewType.Home) {
        continue;
      }
      ret.add(additem(type));
    }
    return ret;
  }
}
