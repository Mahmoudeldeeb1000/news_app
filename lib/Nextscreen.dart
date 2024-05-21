import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Homepage.dart';
import 'package:newsapp/homescreen.dart';
import 'package:newsapp/loginscreen.dart';

class Congratulation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // margin: EdgeInsets.symmetric(vertical:5,horizontal: 7 ),
            alignment: Alignment.center,
            width: 48,
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new,),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return login_screen();
                }
                )
                );
              },
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child:
              Image(image: AssetImage("assets/images/logo.png"),),
          ),
          Text("congratulation!",
            style:TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ) ,),
          Text("Your account is ready to use ",
            style:TextStyle(
              fontSize: 15,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return homescreen();
                  }
                  ),
                );
              },
              child: Text("Go to Homepage"),
            ),
          ),

        ],
      ),

    );
  }

}