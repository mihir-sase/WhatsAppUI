import 'package:flutter/material.dart';

import '../../models/ChatModel.dart';

class ProfileScreen extends StatefulWidget {
  final ChatModel item;

  const ProfileScreen(this.item);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool notificationStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  title: Text(widget.item.username,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image.network(
                    widget.item.profilePicUrl,
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Container(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
          color: Colors.grey[200],
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Media, links, and docs",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.teal)),
                          Icon(Icons.chevron_right, color: Colors.grey)
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 66,
                            width: 66,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 8),
                          Container(
                            height: 66,
                            width: 66,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 8),
                          Container(
                            height: 66,
                            width: 66,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 8),
                          Container(
                            height: 66,
                            width: 66,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 8),
                          Container(
                            height: 66,
                            width: 66,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14),
                Container(
                  padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Mute Notification",
                                style: TextStyle(fontSize: 18)),
                            Switch(
                                value: notificationStatus,
                                activeColor: Colors.teal,
                                onChanged: (val) {
                                  setState(() {
                                    notificationStatus = val;
                                  });
                                })
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                        height: 6,
                        thickness: 1,
                      ),
                      Container(
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Custom notifications",
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                        height: 6,
                        thickness: 1,
                      ),
                      Container(
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Media visibility",
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Encryption",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Messages to this chat and calls are secured with end-to-end encryption. Tap to verify.",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[400]),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.lock,color: Colors.teal)
                      ],
                    )),
                SizedBox(height: 14),
                Container(
                    padding: EdgeInsets.all(14),
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.block,color: Colors.red[700]),
                        SizedBox(width: 18),
                        Text(
                          "Block",
                          style: TextStyle(fontSize: 18,color: Colors.red[700]),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    )),
                SizedBox(height: 14),
                Container(
                    padding: EdgeInsets.all(14),
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.thumb_down,color: Colors.red[700]),
                        SizedBox(width: 18),
                        Text(
                          "Report contact",
                          style: TextStyle(fontSize: 18,color: Colors.red[700]),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
