import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:untitled1/drawer.dart';


class Rest extends StatefulWidget {
  String img;
  String name;
  //
  // const Rest({ key, String name, String img}) : super(key: key);


  Rest({required this.img,required this.name});


  @override
  _RestState createState() => _RestState();
}

class _RestState extends State<Rest> {
  List products=[
    "images/eggplant.jpg" ,
    "images/green.jpg",
    "images/pepper.jpg",


  ];
  List productnames=[
    "pepper",
    "green",
    "brinjal",
  ];
  @override
  Widget build(BuildContext context) {
    double mwidth=MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: mwidth,
                height:250,
                child:Image.asset(widget.img,fit: BoxFit.fill,)
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(widget.name,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                ],

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text("calicut,near kallai"),
                ],


              ),
            ),

            Container(
              height: 350,
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context,index) {
                    return Padding(
                      padding:const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        child: ListTile(
                          leading: Image.asset(products[index]),
                          title: Text(productnames[index],style: TextStyle(fontSize:14),),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("110",style: TextStyle(fontSize: 12,color: Colors.green),),
                            ],

                          ),
                        ),


                      ),
                    );
                  }



              ),

            ),








          ],


        ),

      ),

    );
  }
}
