import 'package:WhatsAppUI/models/ChatModel.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final ChatModel item;

  const ChatScreen(this.item);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: (){Navigator.of(context).pushNamed('/profile',arguments: item);},
          child: Row(
            children: <Widget>[
              Container(
                width: 42,
                height: 42,
                margin: EdgeInsets.fromLTRB(0, 0,8, 0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(item.profilePicUrl),
                        fit: BoxFit.fill
                    )
                ),
              ),
              Text(item.username),
            ],
          ),
        ),
        titleSpacing: 0.0,
      ),
      body: Center(
        child: Text("Chat Screen"),
      ),
    );
  }
}
