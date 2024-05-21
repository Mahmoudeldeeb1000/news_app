import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/loginscreen.dart';

class Signupscreen extends StatefulWidget{
  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  bool kk = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text("Create Account",
                style: TextStyle(
                  fontSize:48,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppines",
                ),
              ),
              Text("Register now and start exploring all that our app has to \n offer. We are excited to welcome you to our community !"
                  , style: TextStyle(color: Colors.black)),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Email",
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
                controller: email,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  print(value);
                },
                validator: (value) {
                  if(value==null||value.isEmpty){
                    return"email is required";
                  }else{
                    return null ;
                  }
                },
                style: TextStyle(
                    color: Colors.black
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}