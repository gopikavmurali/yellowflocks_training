import 'package:flutter/material.dart';
class grid_list extends StatefulWidget {
  const grid_list({Key? key}) : super(key: key);

  @override
  _grid_listState createState() => _grid_listState();
}

class _grid_listState extends State<grid_list> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back)),
        title: Text("GridView"),
        actions: [Icon(Icons.more_vert),],
      ),
       body: Container(
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: GridView(
             children: [
               Container(
                 child: Column(
                   children: [
                     Icon(Icons.settings),
                     SizedBox(height: 20,),
                     Text("Sight seeing",style: TextStyle(color: Colors.white,fontSize: 15),),
                   ],

                 ),

                 color: Colors.purple,),
               Container(color: Colors.red,),
               Container(color: Colors.orange,),
               Container(color: Colors.green,),
               Container(color: Colors.yellow,),
               Container(color: Colors.cyan,),
               Container(color: Colors.brown,),
               Container(color: Colors.pink,),
             ],
             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
               crossAxisSpacing: 20,
               mainAxisSpacing: 20,
               childAspectRatio: 2,
               mainAxisExtent:  200,
               maxCrossAxisExtent: 200,
             ),),
         ),
       ),
    );
  }
}
