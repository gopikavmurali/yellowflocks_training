import 'package:flutter/material.dart';

class image_widget extends StatefulWidget {

  const image_widget({Key? key}) : super(key: key);

  @override
  _image_widgetState createState() => _image_widgetState();
}

class _image_widgetState extends State<image_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" IMAGE WIDGET"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(color: Colors.lightGreen),
              child: Image.asset("assets/cheers.jpg",
              fit:  BoxFit.fill,),

            ),
            SizedBox(height: 50,),
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(image: DecorationImage(
                  image: NetworkImage("https://s01.sgp1.digitaloceanspaces.com/inline/812463-kjohuzcmkz-1469508483.gif"))),
              child: Image.asset("assets/cheers.jpg",
                fit:  BoxFit.cover,),

            ),
            SizedBox(height: 50,),

            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.lightGreen),
              child: Image.network("https://s01.sgp1.digitaloceanspaces.com/inline/812463-kjohuzcmkz-1469508483.gif",fit: BoxFit.cover,),


            )
          ],
        ),
      ),
    );
  }
}
