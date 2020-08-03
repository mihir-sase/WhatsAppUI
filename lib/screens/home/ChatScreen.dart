import 'package:WhatsAppUI/models/ChatModel.dart';
import 'package:WhatsAppUI/widgets/ChatItem.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: dummyChatData.length,
      itemBuilder: (BuildContext context, int index) {
        return ChatItem(item: dummyChatData[index]);
      },
      separatorBuilder: (BuildContext context,int index) => Divider(
        color: Colors.grey[300],
        height: 6,
        thickness: 1,
        indent: 80,
        endIndent: 0,
      )
    );
  }
}
