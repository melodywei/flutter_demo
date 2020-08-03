import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

enum PageType {
  MessagePage,
  Contact,
  Me,
}

class AppState extends State<App> {
  PageType _currentIndex = PageType.MessagePage;
  static Router router;

  currentPage() {
    switch (_currentIndex) {
      case PageType.MessagePage:
        break;
      case PageType.Contact:
        break;
      case PageType.Me:
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('即时通信'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: GestureDetector(
              child: Icon(Icons.add),
              onTap: () {
                showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(200.0, 76.0, 10.0, 0.0),
                    items: <PopupMenuEntry>[
                      _popupMenuItem('发起会话',
                          imagePath: 'images/icon_menu_group.png'),
                      _popupMenuItem('添加好友',
                          imagePath: 'images/icon_menu_addfriend.png'),
                      _popupMenuItem('联系客服', icon: Icons.person),
                    ]);
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex.index,
        onTap: ((index) {
          setState(() {
            _currentIndex = PageType.values[index];
          });
        }),
        items: [
          BottomNavigationBarItem(
            title: Text(
              '聊天',
              style: TextStyle(
                color: _currentIndex == PageType.MessagePage
                    ? Color(0xff46c01b)
                    : Color(0xff999999),
              ),
            ),
            icon: _currentIndex == PageType.MessagePage
                ? Image.asset(
                    "images/message_pressed.png",
                    width: 32.0,
                    height: 28.0,
                  )
                : Image.asset(
                    "images/message_normal.png",
                    width: 32.0,
                    height: 28.0,
                  ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '好友',
              style: TextStyle(
                color: _currentIndex == PageType.Contact
                    ? Color(0xff46c01b)
                    : Color(0xff999999),
              ),
            ),
            icon: _currentIndex == PageType.Contact
                ? Image.asset(
                    "images/contact_list_pressed.png",
                    width: 32.0,
                    height: 28.0,
                  )
                : Image.asset(
                    "images/contact_list_normal.png",
                    width: 32.0,
                    height: 28.0,
                  ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '我的',
              style: TextStyle(
                color: _currentIndex == PageType.Me
                    ? Color(0xff46c01b)
                    : Color(0xff999999),
              ),
            ),
            icon: _currentIndex == PageType.Me
                ? Image.asset(
                    "images/profile_pressed.png",
                    width: 32.0,
                    height: 28.0,
                  )
                : Image.asset(
                    "images/profile_normal.png",
                    width: 32.0,
                    height: 28.0,
                  ),
          )
        ],
      ),
    );
  }

  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath != null
              ? Image.asset(imagePath, width: 32.0, height: 32.0)
              : SizedBox(
                  width: 32.0,
                  height: 32.0,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
