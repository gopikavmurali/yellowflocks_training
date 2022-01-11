import 'package:flutter/material.dart';
 class buttons extends StatefulWidget {
   const buttons({Key? key}) : super(key: key);

   @override
   _buttonsState createState() => _buttonsState();
 }

 class _buttonsState extends State<buttons> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Types of Buttons"),
       ),
       floatingActionButton: FloatingActionButton(onPressed: () {  },),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             ElevatedButton.icon(
               onPressed: (){},
               onLongPress: (){},
              // child: Text("Elevated Button"),
               style: ElevatedButton.styleFrom(
                 primary: Colors.teal,
                 onPrimary: Colors.white,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                 minimumSize: Size(150, 40),
                 elevation: 10,
                 side: BorderSide(color: Colors.black),
                 shadowColor: Colors.yellow,

               ),
               icon: Icon(Icons.perm_identity),
               label: Text("Username") ,
             ),
             SizedBox(height: 20,),
             OutlinedButton(
                 onPressed: (){},
                 onLongPress: (){},
              // icon:,
               //label: ,
                 child: Text("Outline Button",),
                 style: OutlinedButton.styleFrom(
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                   backgroundColor: Colors.grey,
                   primary: Colors.white,
                   side: BorderSide(color: Colors.black),


                 ) ,

             ),
             SizedBox(height: 20,),
             TextButton.icon(
                 onPressed: (){},
                 onLongPress: (){},
               icon: Icon(Icons.shopping_cart),
               label: Text("Shopping Cart"),
                // child: Text("Text Button"),
                 style: TextButton.styleFrom(
                   primary: Colors.white,
                   backgroundColor: Colors.blue,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                   elevation: 10,
                   shadowColor: Colors.teal,
                   padding: EdgeInsets.symmetric(vertical: 20,horizontal: 60),


                 ),
             ),
             SizedBox(height: 20,),
             IconButton(
               onPressed: (){},
               icon: Icon(Icons.home),
               iconSize: 60,
               color: Colors.purple,
               highlightColor: Colors.red,
               splashColor: Colors.yellow,
               splashRadius: 100,
             ),
             FloatingActionButton(
               //label: Text("home"),
               //icon: Icon(Icons.home),
               onPressed: (){},

             backgroundColor: Colors.greenAccent,),


           ],
         ),
       )
     );
   }
 }
