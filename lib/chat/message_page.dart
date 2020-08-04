import 'package:flutter/material.dart';
import 'package:flutter_demo/chat/message_data.dart';
import 'package:flutter_demo/chat/message_item.dart';

class MessagePage extends StatefulWidget {
  @override
  MessageState createState() => MessageState();
}

class MessageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (BuildContext context, int index) {
          return new MessageItem(messageData[index]);
        },
      ),
    );
  }
}
