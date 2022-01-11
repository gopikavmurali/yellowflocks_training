
import 'package:flutter/material.dart';

class expanded extends StatefulWidget {
  const expanded({Key? key}) : super(key: key);

  @override
  _expandedState createState() => _expandedState();
}

class _expandedState extends State<expanded> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget",),
      ),

      body: rowEgContainer(),

       // body: SingleChildScrollView(
       //
       //   child: Column(
       //     children: [
       //       Container(
       //         height: 100,// MediaQuery.of(context).size.height,
       //         width: MediaQuery.of(context).size.width,
       //         color: Colors.cyan,
       //       ),
       //       Container(
       //         height: 100,
       //         width: MediaQuery.of(context).size.width,
       //         color: Colors.lightGreenAccent,
       //       ),
       //       Container(
       //         height: 100,
       //         width: MediaQuery.of(context).size.width,
       //         color: Colors.amber,
       //       ),
       //       Container(
       //         height: 100,
       //         width: MediaQuery.of(context).size.width,
       //         color: Colors.cyan,
       //       ),
       //       Container(
       //         height: 100,
       //         width: MediaQuery.of(context).size.width,
       //         color: Colors.lightGreenAccent,
       //       ),
       //       Container(
       //         height: 100,
       //         width: MediaQuery.of(context).size.width,
       //         color: Colors.pink,
       //       ),
       //       Container(
       //         height: 100,
       //         width: MediaQuery.of(context).size.width,
       //         color: Colors.lightGreenAccent,
       //       ),
       //       Container(
       //         height: 100,
       //         width: MediaQuery.of(context).size.width,
       //         color: Colors.amber,
       //       ),
       //       Container(
       //         height: 100,// MediaQuery.of(context).size.height,
       //         width: MediaQuery.of(context).size.width,
       //         color: Colors.cyan,
       //       ),
       //     ],
       //   ),
       // ),
    );
  }
}

Widget rowEgContainer() {
  return  SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.all( 50),
    child: Row(
      children: [
        Container(
          height: 900,
          width: 100,
          color: Colors.cyan,
        ),
        SizedBox(width: 10,),
        Container(
          height: 900,
          width: 100,
          color: Colors.red,
        ),
        Container(
          height: 900,
          width: 100,
          color: Colors.yellow,

        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 900,
            width: 100,
            color: Colors.deepOrange,
          ),
        ),
        Container(
          height: 900,
          width: 100,
          color: Colors.yellow,
        ),
        Container(
          height: 900,
          width: 100,
          color: Colors.green,
        ),
      ],

    ),
  );
}

Widget rowContainer(){
  return SingleChildScrollView(
    padding: EdgeInsets.all(100),
    scrollDirection: Axis.horizontal,
    child: Row(

      children: [
        Container(
          height: 1000,//MediaQuery.of(content).size.height,
          width: 100,
          color: Colors.red,
        ),
        Container(
          height: 1000,
          width: 100,
          color: Colors.yellow,
        ),
        Container(
          height: 1000,
          width: 100,
          color: Colors.pink,
        ),
        Container(
          height: 1000,
          width: 100,
          color: Colors.green,
        ),
        Container(
          height: 1000,
          width: 100,
          color: Colors.pink,
        ),
      ],

    ),
  );


}