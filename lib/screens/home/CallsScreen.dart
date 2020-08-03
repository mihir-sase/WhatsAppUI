import 'package:WhatsAppUI/models/CallsModel.dart';
import 'package:WhatsAppUI/widgets/CallsItem.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: dummyCallsData.length,
        itemBuilder: (BuildContext context, int index) {
          return CallsItem(item: dummyCallsData[index]);
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
