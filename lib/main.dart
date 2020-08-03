import 'package:flutter/material.dart';
import 'package:flutter_demo/loading.dart';
import 'package:flutter_demo/route_handler.dart';
import 'package:fluro/fluro.dart';

void main() {
  Router router = Router();
  Routes.configureRoutes(router);
  MyApp.router = router;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static Router router;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '聊天室',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Color(0xffebebeb),
        cardColor: Colors.green,
      ),
      home: LoadingPage(),
      onGenerateRoute: MyApp.router.generator,
    );
  }
}
