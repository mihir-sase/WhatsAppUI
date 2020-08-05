import 'dart:io';

import 'package:WhatsAppUI/services/ChatServices.dart';
import 'package:WhatsAppUI/utils/Cloudinary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewChatScreen extends StatefulWidget {
  @override
  _NewChatScreenState createState() => _NewChatScreenState();
}

class _NewChatScreenState extends State<NewChatScreen> {
  File _image;
  final picker = ImagePicker();
  TextEditingController usernameController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  void createChat() async {
    ChatServices service = ChatServices();
    Cloudinary cloudinary = Cloudinary();
    String url = await cloudinary.uploadFile(_image);
    var r = await service.createChat(
        usernameController.text, messageController.text, timeController.text,url);
    print(r);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New Chat"),
        ),
        body: Container(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: getImage,
                          child: _image == null
                              ? Container(
                                  height: 120,
                                  width: 120,
                                  color: Colors.grey[400],
                                  child: Center(
                                    child: Icon(
                                      Icons.add_circle_outline,
                                      size: 38,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : SizedBox(
                                  height: 120,
                                  width: 120,
                                  child: Image.file(_image)),
                        ),
                        SizedBox(height: 12),
                        Text("Select Image", style: TextStyle(fontSize: 16))
                      ],
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: usernameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "username"),
                          ),
                          SizedBox(height: 8),
                          TextField(
                            controller: messageController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "message"),
                          ),
                          SizedBox(height: 8),
                          TextField(
                            controller: timeController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(), hintText: "time"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 28),
                SizedBox(
                  height: 40,
                  child: RaisedButton(
                    onPressed: createChat,
                    color: Colors.teal,
                    child: Text(
                      "Create",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            )));
  }
}
