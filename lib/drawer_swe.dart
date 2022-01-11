import 'package:flutter/material.dart';
//import 'package:untitled1/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yellowflock_batch7/mark.dart';
//import 'package:untitled1/mark.dart';


class drawer_swe extends StatefulWidget {
  const drawer_swe({key}) : super(key: key);

  @override
  _drawer_sweState createState() => _drawer_sweState();
}

class _drawer_sweState extends State<drawer_swe> {



  List<String> veg=[
    "images/cabbage.jpg",
    "images/lemon.jpg",
    "images/tomatto.jpg",
  ];
  List vegnames=[
    "cabbage",
    "lemon",
    "tomato",
  ];




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
            CarouselSlider.builder(
                itemCount: veg.length,

                itemBuilder: (context,index,pagecount){
                  return Container(
                    height:210,
                    width:310,
                    child: Image.asset(veg[index],fit: BoxFit.fill,),
                  );
                },
                options: CarouselOptions(
                    height:200,
                    autoPlay: true,

                    scrollPhysics: ScrollPhysics()


                )),

            Container(
              height: 150,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.red
                        ),
                        child:Center(
                          child: Text("111"),
                        ),
                      ),
                    );

                  }


              ),

            ),

            Container(
              height: 150,
              child: ListView.builder(

                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap:() {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Mark(img:veg[index],
                            name:vegnames[index],)));
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 5.0,
                                  blurRadius: 8.1,

                                )
                              ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(veg[index],height: 80,width: 100,),
                              Text(vegnames[index],style: TextStyle(fontSize: 11,fontWeight:FontWeight.bold),),
                            ],

                          ),
                        ),
                      ),
                    );



                  }
              ),
            ),


            Container(

              height: 250,
              child: GridView.builder(
                  shrinkWrap:true,
                  itemCount:veg.length,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing:10.0,
                  ),
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,

                            )
                          ]
                      ),


                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(veg[index],height: 80,width: 100,),
                          Text(vegnames[index],style: TextStyle(fontSize: 11,fontWeight:FontWeight.bold),),
                        ],

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



