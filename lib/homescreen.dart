import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Homepage.dart';
import 'package:newsapp/Nextscreen.dart';

class homescreen extends StatefulWidget{


  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
       length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          title: Row(
            children: [
              Padding(
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
                        return Congratulation();
                      }
                      )
                      );
                    },
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Flexible(
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: "Dogecoin to the Moon",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                  ),
                ),
              ),
              SizedBox(width: 20,),
              FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: (){},
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Icon(Icons.notifications_none),
                    Container(
                      width: 9,
                      height: 9,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(50)

                      ),
                    )
                  ],
                ),

              )
            ],

          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black)
                  ),
                  tabs: [
                Tab(
                    child: Text("All",style: TextStyle(
                      color: Colors.black
                    ),)
                ),
                Tab(
                    child: Text("Sciense",style: TextStyle(
                      color: Colors.black
                    ),)
                ),
                Tab(
                    child: Text("Bisness",style: TextStyle(
                        color: Colors.black
                    ),
                    )
                ),
                Tab(
                    child: Text("Sports",style: TextStyle(
                          color: Colors.black
                      ),)
                ),
              ]
              ),
              Flexible(
                child: TabBarView(children: [
                  ListView(
                    children: [
                      Image(image: AssetImage("assets/images/خبر.png"),),
                      Image(image: AssetImage("assets/images/خبر.png"),),
                      Image(image: AssetImage("assets/images/خبر.png"),),
                      Image(image: AssetImage("assets/images/خبر.png"),),
                      Image(image: AssetImage("assets/images/خبر.png"),),
                      Image(image: AssetImage("assets/images/خبر.png"),),
                      Image(image: AssetImage("assets/images/خبر.png"),),
                      Image(image: AssetImage("assets/images/خبر.png"),),
                      Image(image: AssetImage("assets/images/خبر.png"),),
                      Image(image: AssetImage("assets/images/خبر.png"),),
                    ],
                  ),
                  ListView(
                    children: [
                      Image(image: AssetImage("assets/images/خبر2.png"),),
                      Image(image: AssetImage("assets/images/خبر2.png"),),
                      Image(image: AssetImage("assets/images/خبر2.png"),),
                      Image(image: AssetImage("assets/images/خبر2.png"),),
                      Image(image: AssetImage("assets/images/خبر2.png"),),
                      Image(image: AssetImage("assets/images/خبر2.png"),),
                      Image(image: AssetImage("assets/images/خبر2.png"),),
                      Image(image: AssetImage("assets/images/خبر2.png"),),
                      Image(image: AssetImage("assets/images/خبر2.png"),),
                      Image(image: AssetImage("assets/images/خبر2.png"),),
                    ],
                  ),
                  ListView(
                    children: [
                      Image(image: AssetImage("assets/images/خبر3.png"),),
                      Image(image: AssetImage("assets/images/خبر3.png"),),
                      Image(image: AssetImage("assets/images/خبر3.png"),),
                      Image(image: AssetImage("assets/images/خبر3.png"),),
                      Image(image: AssetImage("assets/images/خبر3.png"),),
                      Image(image: AssetImage("assets/images/خبر3.png"),),
                      Image(image: AssetImage("assets/images/خبر3.png"),),
                      Image(image: AssetImage("assets/images/خبر3.png"),),
                      Image(image: AssetImage("assets/images/خبر3.png"),),
                      Image(image: AssetImage("assets/images/خبر3.png"),),
                    ],
                  ),
                  ListView(
                    children: [
                      Image(image: AssetImage("assets/images/خبر4.png"),),
                      Image(image: AssetImage("assets/images/خبر4.png"),),
                      Image(image: AssetImage("assets/images/خبر4.png"),),
                      Image(image: AssetImage("assets/images/خبر4.png"),),
                      Image(image: AssetImage("assets/images/خبر4.png"),),
                      Image(image: AssetImage("assets/images/خبر4.png"),),
                      Image(image: AssetImage("assets/images/خبر4.png"),),
                      Image(image: AssetImage("assets/images/خبر4.png"),),
                      Image(image: AssetImage("assets/images/خبر4.png"),),
                      Image(image: AssetImage("assets/images/خبر4.png"),),
                    ],
                  ),

                ]),
              ),
            ],

          ),
        ),
      ),
    );
  }
}