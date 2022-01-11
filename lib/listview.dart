import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_view extends StatefulWidget {
  const list_view({Key? key}) : super(key: key);

  @override
  _list_viewState createState() => _list_viewState();
}


class _list_viewState extends State<list_view> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff128C7E),
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10,),
          Icon(Icons.settings),
          SizedBox(width: 10,),
        ],
      ),
      body:
      Container(
        child: ListView.separated(
          itemBuilder: (BuildContext context,int index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.lightGreen,
                  child: Image.asset("assets/person.jpg",fit: BoxFit.fitHeight,),

                ),
                title: Text(" Ravi $index",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                subtitle: Text("How are you"),
                trailing: Column(
                  children: [
                    Text("10.00am"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xff128C7E),),
                        child: Center(child: Text("2",style: TextStyle(color: Colors.white),)),


                      ),
                    )
                  ],
                )

              ),
            );
          },

          itemCount: 30,
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Color(0xff128C7E),
        child: Icon(Icons.message_sharp,),

      ),


    );
  }
}
