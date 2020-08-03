import 'package:fluro/fluro.dart';
import 'package:flutter_demo/loading.dart';
import 'package:flutter_demo/app.dart';

var loadingHandle = Handler(
  handlerFunc: (context, parameters) => LoadingPage(),
);

var emptyHanlder = Handler(
  handlerFunc: (context, parameters) => LoadingPage(),
);

var homeHandler = Handler(
  handlerFunc: (context, parameters) => App(),
);

class Routes {
  static void configureRoutes(Router router) {
    router.define("loading_page", handler: loadingHandle);
    router.define("app", handler: homeHandler);
    router.notFoundHandler = emptyHanlder; //空页面
  }
}
