import 'package:WhatsAppUI/models/StatusModel.dart';
import 'package:WhatsAppUI/widgets/StatusItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          leading: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://randomuser.me/api/portraits/med/men/83.jpg"),
                    fit: BoxFit.fill)),
          ),
          title:
              Text("My status", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Tap to add status update"),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
          child: Text("Viewed updates",textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey)),
        ),
        Expanded(
          child: ListView.separated(
              itemCount: dummyStatusData.length,
              itemBuilder: (BuildContext context, int index) {
                return StatusItem(item: dummyStatusData[index]);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  Divider(
                    color: Colors.grey[300],
                    height: 6,
                    thickness: 1,
                    indent: 80,
                    endIndent: 0,
                  )
          ),
        )
      ],
    );

  }
}
