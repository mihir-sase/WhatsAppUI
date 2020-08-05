import 'package:flutter/material.dart';

import '../calls/CallsTab.dart';
import '../chat/ChatTab.dart';
import '../status/StatusTab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this,initialIndex: 1);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            tooltip: 'Next page',
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          unselectedLabelColor: Colors.white70,
          labelColor: Colors.white,
          tabs: [
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS")
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        bottomOpacity: 1,
      ),
      floatingActionButton: _fabButtons(),
      body: TabBarView(
        children: [
          new Text("This is call Tab View"),
          ChatTab(),
          StatusTab(),
          CallsTab(),
        ],
        controller: _tabController,
      ),
    );
  }

  Widget _fabButtons() {
    switch (_tabController.index) {
      case 1:
        return FloatingActionButton(
          onPressed: (){Navigator.of(context).pushNamed('/newChat');},
          backgroundColor: Colors.teal,
          child: Icon(Icons.message),
        );
      case 2:
        return FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.teal,
          child: Icon(Icons.camera_alt),
        );
      case 3:
        return FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.teal,
          child: Icon(Icons.add_call),
        );
    }
  }
}
