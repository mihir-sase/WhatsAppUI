import 'package:WhatsAppUI/models/CallsModel.dart';
import 'package:flutter/material.dart';

class CallsItem extends StatelessWidget {
  final CallsModel item;

  CallsItem({this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(item.profilePicUrl), fit: BoxFit.fill)),
      ),
      title: Text(item.username),
      subtitle: Row(
        children: <Widget>[
          item.incoming
              ? Icon(Icons.call_received, color: Colors.redAccent,size:18)
              : Icon(Icons.call_made, color: Colors.green,size:18),
          Text(item.callTime),
        ],
      ),
      trailing: item.isAudio
          ? Icon(Icons.call, color: Colors.teal)
          : Icon(Icons.videocam, color: Colors.teal),
    );
  }
}
