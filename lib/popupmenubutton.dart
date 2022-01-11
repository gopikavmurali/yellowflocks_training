import 'package:flutter/material.dart';

class popup extends StatefulWidget {

  //const popup({Key? key}) : super(key: key);

  @override
  _popupState createState() => _popupState();
}

class _popupState extends State<popup> {



  String title = 'PopUpMenuButton';
  late String newValue = "" ;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: PopupMenuButton(
          // child: Text("Menu"),
            enabled: true,
            onCanceled: (){
              print("nothing selected");
            },
            onSelected: (value){
              setState(() {
                newValue = value as String;
              });
            },
            elevation: 4,
            color: Colors.cyan,
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.green,width: 5)),
            //icon: Icon(Icons.menu_outlined),
            itemBuilder: (context)=>[
              PopupMenuItem(
                child: Text("One"),
                value: "1 One",
              ),
              PopupMenuItem(child: Text("Two"),
                value: "2 Two",),
              PopupMenuItem(child: Text("Three"),
                value: "3 Three",),
              PopupMenuItem(child: Text("Four"),
                value: "4 Four",),
              PopupMenuItem(child: Text("Five"),
                value: "5 Five",),
              PopupMenuItem(child: Text("Six"),
                value: "6 Six",),
              PopupMenuItem(child: Text("Seven"),
                value: "7 Seven",),

            ]),
        actions: [
          PopupMenuButton(
           // child: Text("Menu"),
            enabled: true,
            onCanceled: (){
              print("nothing selected");
            },
            onSelected: (value){
              setState(() {
                newValue = value as String;
              });
          },
            elevation: 4,
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.green,width: 5)),
            icon: Icon(Icons.menu_outlined),
              itemBuilder: (context)=>[
            PopupMenuItem(
                child: Text("One"),
                 value: "1 One",
            ),
            PopupMenuItem(child: Text("Two"),
              value: "2 Two",),
            PopupMenuItem(child: Text("Three"),
              value: "3 Three",),
            PopupMenuItem(child: Text("Four"),
              value: "4 Four",),
            PopupMenuItem(child: Text("Five"),
              value: "5 Five",),
            PopupMenuItem(child: Text("Six"),
              value: "6 Six",),
            PopupMenuItem(child: Text("Seven"),
              value: "7 Seven",),

          ])
        ],
      ),
      body: Center(
        child: Text(newValue,style: TextStyle(fontSize: 50),),
      ),
    );}
}
