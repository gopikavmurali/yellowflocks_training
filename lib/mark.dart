import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:untitled1/cart.dart';
class Mark extends StatefulWidget {
  //const ({key}) : super(key: key);
  String name;
  String img;
  Mark({required this.img,required this.name});

  @override
  _MarkState createState() =>_MarkState();
}


class _MarkState extends State<Mark> {
  //List products=["images/spinach.jpg","images/brocoli.jpg"];
  ////// List productnames=[
  //"spinach",
  //"brocoli",
// ];
  @override
  Widget build(BuildContext context) {
    double mwidth=MediaQuery.of(context).size.width;
    return Scaffold(

      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 180,
              child: Row(
                children: [
                  Image.asset(widget.img,fit: BoxFit.fill,),
                  Text(widget.name),
                ],
              ),
            ),
          ),
          //child:Column(
          //mainAxisAlignment:MainAxisAlignment.start,
          //// children: [
          //Container(
          //// width:mwidth,
          // height:250,
          //child:Image.asset(widget.img,fit: BoxFit.fill,)
          //  ),
          //Padding(
          // padding: const EdgeInsets.all(8.0),
          //child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          // children: [
          //Text(widget.name,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          // ] ,
          // ),
          //// ),
          // Padding(
          // padding: const EdgeInsets.only(left: 12,top: 5.0),
          // child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // children: [
          // Text("kozikode"),
          // ],
          // ),
          // ),
          // Padding(
          //padding: const EdgeInsets.only(left: 12,top: 5.0),
          //child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          // children: [
          //  Text("Description",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
          // ],
          // ),
          // ),
          //Padding(
          //padding: const EdgeInsets.only(left: 12,top: 5.0),
          // child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          //
          // children: [
          //  Text("itema available",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
          // ],
          //),
          //),
          //  Container(
          //  height: 350,
          // child: ListView.builder(
          ////   itemCount:products.length,
          //  itemBuilder: (context,index){
          //return Padding(
          //   padding: const EdgeInsets.all(8.0),
          // child: Card(
          // elevation: 2.0,
          //child: Container(
          //height: 70,
          //child: ListTile(
          //leading: Image.asset(products[index]),
          //title: Text(productnames[index],),
          //trailing: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          // children: [
          //Text("Rs.110"),
          //Padding(
          //padding: const EdgeInsets.all(8.0),
          //child: GestureDetector(
          // onTap:(){
          // Navigator.push(context,MaterialPageRoute(builder: (context)=>
          // cart(imgname: products[index],name: productnames[index],price:"115",)) );
          //  },
          // child: Container(
          // height:25,
          //width:75,
          // color:Colors.green,
          // child:Center(
          // child: Text("add to cart"),
          //  ),
          //  ),
          // ),
          //  ),
          //  ],
          // ),
          //    ),
          //   ),
          // ),
          // );
          // }
          //  ),
          //   ),
          //  ],
          //),
          // ),


        ],
      ),
    );



  }
}

