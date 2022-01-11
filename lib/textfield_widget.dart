import 'package:flutter/material.dart';

class texfield_widget extends StatefulWidget {
  const texfield_widget({Key? key}) : super(key: key);


  @override
  _texfield_widgetState createState() => _texfield_widgetState();
}

class _texfield_widgetState extends State<texfield_widget> {

  TextEditingController _userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Widget"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:   [
           Center(
             child: Container(
               height: 100,
               width: 300,
               child: TextField(
                    controller: _userController,
                 decoration: const InputDecoration(
                   errorText: "username is not valid",
                   icon: Icon(Icons.phone),
                   suffixIcon: Icon(Icons.person),
                    prefixIcon: Icon(Icons.remove_red_eye),
                    hintText: "Username",
                   hintStyle: TextStyle(color: Colors.grey),
                   labelText: "Enter your name",
                   labelStyle: TextStyle(color: Colors.green,fontSize: 15),
                   border: OutlineInputBorder()
                 ),
                 keyboardType: TextInputType.text,
                 //obscureText: true,
                 maxLength: 20,
                 maxLines: 4,

               ),
             ),

           ),

               RaisedButton(
                   onPressed: (){
            print("Username:" +_userController.text);
          })
        ],
      ),
    );
  }
}
