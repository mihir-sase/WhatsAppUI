import 'package:WhatsAppUI/models/StatusModel.dart';
import 'package:flutter/material.dart';
class StatusItem extends StatelessWidget {
  final StatusModel item;
  StatusItem({this.item});
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
      subtitle: Text(item.uploadTime),
    );
  }
}
