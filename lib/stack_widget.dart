import 'package:flutter/material.dart';

class stack extends StatefulWidget {
  const stack({Key? key}) : super(key: key);

  @override
  _stackState createState() => _stackState();
}

class _stackState extends State<stack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: 300,
          color: Colors.grey,
          child: Stack(
            overflow: Overflow.visible,
            //textDirection: TextDirection.rtl,
            // alignment: Alignment.bottomLeft,
             children: [
               Positioned(
                 top: -20,
                 left: 150,
                 child: Container(
                   height: 200,
                   width: 200,
                   color: Colors.pinkAccent,
                 ),
               ), 
               Align(
                 alignment: Alignment.center,
                 child: Container(
                   height: 150,
                   width: 150,
                   color: Colors.teal,
                 ),
               ),
               Positioned(
                 bottom: 120,
                 right: 80,
                 child: Container(
                   height: 100,
                   width: 100,
                   color: Colors.yellow,
                 ),
               )

             ],
          ),
        ),
      ),
    );
  }
}
