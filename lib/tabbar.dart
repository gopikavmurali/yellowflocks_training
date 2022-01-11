import 'package:flutter/material.dart';
import 'package:yellowflock_batch7/gridview_last.dart';
import 'package:yellowflock_batch7/listview.dart';
import 'package:yellowflock_batch7/textfield_widget.dart';

class tabbar_control extends StatefulWidget {

  const tabbar_control({Key? key}) : super(key: key);

  @override
  _tabbar_controlState createState() => _tabbar_controlState();
}

class _tabbar_controlState extends State<tabbar_control> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(





       length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
           tabs: [
             Tab(text: "Camera" ,icon: Icon(Icons.camera) ),
             Tab(text: "Chat" ,icon: Icon(Icons.chat) ),
             Tab(text: "Calls" ,icon: Icon(Icons.call) ),
          ],
        ),
      ),
        body: const TabBarView(
          children: [
            Center(child: Text("Camera")),
            Center(child: Text("Chat")),
            Center(child: Text("Calls")),
          ],),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xFF81C784)),
                  child: Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: Colors.green[900],),
                        Text("Welcome to YellowFlocks"),
                        Text("Training Program")
                      ],
                    ),
                  )

              ),
              
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> grid_list()));
                  Navigator.pop(context);
                  },
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("My Favorite"),
                trailing: Icon(Icons.arrow_right),
              ),

              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("My Cart"),
                trailing: Icon(Icons.arrow_right),
              ),







            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xFF81C784)),
                  child: Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 30,

                          backgroundColor: Colors.green[900],),
                        Text("Welcome to YellowFlocks"),
                        Text("Training Program")
                      ],
                    ),
                  )

              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> grid_list()));
                  Navigator.pop(context);
                },
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("My Favorite"),
                trailing: Icon(Icons.arrow_right),
              ),

              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("My Cart"),
                trailing: Icon(Icons.arrow_right),
              ),







            ],
          ),
        ),

      ),
    );
  }
}
