import "package:flutter/material.dart";

class tabBar extends StatefulWidget {

  const tabBar({Key? key}) : super(key: key);

  @override
  _tabBarState createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "chats ",icon: Icon(Icons.camera,)),
              Tab(text: "chats ",icon: Icon(Icons.camera,)),
              Tab(text: "chats ",icon: Icon(Icons.camera,)),
              Tab(text: "chats ",icon: Icon(Icons.camera,)),
            ],) ,
        ),
        endDrawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.tealAccent[700],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              )
            ],
          ),

        ),
        drawer: Drawer(

          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.tealAccent[700],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text("chats")),
          Center(child: Text("calls")),
          Center(child: Text("camera")),
          Center(child: Text("contact")),
        ],),
      ),
    );
  }
}
