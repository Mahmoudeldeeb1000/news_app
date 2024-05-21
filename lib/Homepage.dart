import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "covid new veriant",
                suffixIcon: IconButton(icon: Icon(Icons.close),
                  onPressed: () {  },
              ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
            ),
          ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("About 11,130,000 results for "),
              Text(" COVID New Variant.",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage("assets/images/خبر.png"),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage("assets/images/خبر2.png"),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage("assets/images/خبر3.png"),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage("assets/images/خبر4.png"),),
          ),


        ],
      ),
      )

    );
  }

}