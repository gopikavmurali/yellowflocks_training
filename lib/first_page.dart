import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class first_page extends StatefulWidget {
  const first_page({Key? key}) : super(key: key);


  @override
  _first_pageState createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        leading:  Icon(Icons.menu,color: Colors.black),
        title: Text("Welcome to Flutter",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500) ,),
        actions: const [
          Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),
          Center(
            child: Text("Lggout",style: TextStyle(color: Colors.black,letterSpacing: 2),
            ),
          ),
          SizedBox(width: 20,)
        ],
        elevation: 9,

      ),

        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Colors",),
                ],
              ),
              Row(
                children: [
                  Container(
                     height: 100,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.teal),
                        color: Colors.red),
                    child: Center(child: Text("Register")),

                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                    child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg",
                        fit: BoxFit.cover),

                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                    child: Image.asset("images/recep.jpg")
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Colors",style: TextStyle(color: Colors.black45,fontSize: 20),)
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.teal,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.pink,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Do you have an account",style: TextStyle(color: Colors.black,fontSize: 15),),
                  SizedBox(width: 15,),
                  Text("Sign In",style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),)
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.brown,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepOrange,
                  ),
                ],
              ),
            ],
          ),
        )




          


    );
  }
}
