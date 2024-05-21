import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Nextscreen.dart';
import 'package:newsapp/Signupscreen.dart';

class login_screen extends StatefulWidget{
  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool cs = true;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hellow",
                  style: TextStyle(
                    fontSize:48,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppines",
                  ),
                ),
                Text("Again!",
                  style: TextStyle(
                    fontSize:48,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppines",
                  ),
                ),
                Text("welcome back you've \n been mised",
                  style: TextStyle(
                    fontSize:20,
                    color: Colors.black,
                    fontFamily: "Poppines",
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Username",
                      style: TextStyle(
                        fontSize:15,
                        color: Colors.black,
                        fontFamily: "Poppines",
                      ),
                    ),
                    Text("*",
                      style: TextStyle(
                        fontSize:15,
                        color: Colors.red,
                        fontFamily: "Poppines",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("password",
                      style: TextStyle(
                        fontSize:15,
                        color: Colors.black,
                        fontFamily: "Poppines",
                      ),
                    ),
                    Text("*",
                      style: TextStyle(
                        fontSize:15,
                        color: Colors.red,
                        fontFamily: "Poppines",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                TextFormField(
                  obscureText: cs,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye_outlined),
                      onPressed: () {
                      setState((){

                      });
                      cs = !cs;
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Checkbox(
                        value: check,
                        onChanged:
                        (valu){
                          setState((){

                          });
                      check = valu!;
                      print(valu);
                        }
                    ),
                    Text("Remmber me "),
                   SizedBox(width: 25),
                   TextButton(onPressed: (){
                     setState((){
                     });
                   },
                       child: Text("Forget your password? "))
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                     onPressed: (){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context){
                             return Congratulation();
                           }
                           ),
                       );
                     },
                    child: Text("login"),
                  ),
                ),



                Center(
                  child: Text("or continue with",style:
                  TextStyle(
                    fontSize: 20,

                  ),
                  ),
                ),

                Row(
                  children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                    ),
                    width: 120,
                    height: 40,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        IconButton(onPressed: (){},
                            icon: Icon(Icons.facebook),color: Colors.blue,
                        ),
                        Text("Facebook")
                      ],
                    ),
                  ),
                    SizedBox(width: 60),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                      ),
                      width: 100,
                      height: 40,
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          IconButton(onPressed: (){},
                            icon: Icon(Icons.g_mobiledata_outlined),color: Colors.orange,
                          ),
                          Text("Google")
                        ],
                      ),
                    ),
                ],
                ),
                Row(
                  children: [
                    SizedBox( width: 75,),
                    Text("don't have any account?"),
                    TextButton(onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return Signupscreen();
                        }
                        ),
                      );
                    },
                        child: Text("Sign up")
                    )

                  ],
                ),
              ],
            ),
          ),
        ),
      )


    );
  }
}