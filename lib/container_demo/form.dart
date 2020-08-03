import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  @override
  _FormDemoState createState() => new _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  GlobalKey<FormState> loginkey = new GlobalKey<FormState>();
  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormDemo'),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(16.0),
            child: new Form(
              key: loginkey,
              child: new Column(
                children: <Widget>[
                  new TextFormField(
                    decoration: new InputDecoration(
                      labelText: '请输入用户名',
                    ),
                    onSaved: (value) {
                      username = value;
                    },
                    onFieldSubmitted: (value) {},
                  ),
                  new TextFormField(
                    decoration: new InputDecoration(
                      labelText: '请输入密码',
                    ),
                    onSaved: (value) {
                      password = value;
                    },
                    onFieldSubmitted: (value) {},
                    obscureText: true,
                    validator: (value) {
                      return value.length < 6 ? "密码长度不够6位" : null;
                    },
                  ),
                ],
              ),
            ),
          ),
          new SizedBox(
            width: 340.0,
            height: 42.0,
            child: new RaisedButton(
              onPressed: login,
              child: new Text(
                '登陆',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void login() {
    var loginForm = loginkey.currentState;

    if (loginForm.validate()) {
      loginForm.save();
    }
  }
}
