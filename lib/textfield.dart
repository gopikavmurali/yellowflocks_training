import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yellowflock_batch7/gridview.dart';
import 'package:yellowflock_batch7/textfield_widget.dart';

import 'expanded.dart';
import 'first_page.dart';
import 'listview.dart';

class grid extends StatefulWidget {

  const grid({Key? key}) : super(key: key);

  @override
  _gridState createState() => _gridState();
}

class _gridState extends State<grid> {

  bool secureText = true;
 int  index =30;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 4,

      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Textfield Widget"),
          bottom: TabBar(tabs: [
            Tab(text: "tab1",icon: Icon(Icons.add_a_photo_outlined,color: Colors.black,),),
            Tab(text: "tab2",icon: Icon(Icons.add_a_photo_outlined),),
            Tab(text: "tab3",icon: Icon(Icons.add_a_photo_outlined),),
            Tab(text: "tab4",icon: Icon(Icons.add_a_photo_outlined),),
          ],

          ),
        ),
        body: TabBarView(children: [
         list_view(),
          first_page(),
           texfield_widget(),
          rowContainer(),
        ],

        )
      ),
    );
  }
}


