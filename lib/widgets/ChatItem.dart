import 'package:WhatsAppUI/models/ChatModel.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final ChatModel item;
  ChatItem({this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(item.profilePicUrl),
            fit: BoxFit.fill
          )
        ),
      ),
      title: Text(item.username),
      subtitle: Text(item.lastMessage),
      trailing: Text(item.lastMessageTime),
    );
  }
}
