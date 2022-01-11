import 'package:flutter/material.dart';

class grid_view extends StatefulWidget {

  const grid_view({Key? key}) : super(key: key);

  @override
  _grid_viewState createState() => _grid_viewState();
}

class _grid_viewState extends State<grid_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview"),
      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            children: [
              Container(
                height:100,
                width:100,
                color: Colors.red,),
              Container(
                height:100,
                width:100,
                color: Colors.green,),
              Container(
                height:100,
                width:100,
                color: Colors.yellow,),
              Container(
                height:100,
                width:100,
                color: Colors.purple,),
              Container(
                height:100,
                width:100,

                color: Colors.cyan,),
            ],
              // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //     maxCrossAxisExtent: 90,
              //   mainAxisExtent: 20,
              //   mainAxisSpacing: 20
              //
              // ),
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
                childAspectRatio: 2,
                crossAxisSpacing: 10,
               mainAxisSpacing: 10,
               // mainAxisExtent: 2,
              )
          ),
        ),
      ),
    );
  }
}

