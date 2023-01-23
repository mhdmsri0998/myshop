import 'package:flutter/material.dart';
import 'package:shopmy/Widget/DealSWidget.dart';
import 'package:shopmy/Widget/myappbar.dart';

import '../Widget/HomeBottomBar.dart';
import '../Widget/ItemsWidget.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeBottomBar(),
      body: ListView(
        children: [
          myappbar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2)
            ),
            child: Column(
              children: [
                Container(
                  margin:

                  EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white ,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 50,
                          width: 300,
                          child: TextFormField(

                            decoration: InputDecoration(
                              icon:
                              Icon(Icons.camera_alt,size: 29,color: Colors.black,)
                                ,

                              border: InputBorder.none,
                              hintText: "Search hear.... "
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),






                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10,top: 15),
                   child: Text("Best Deals",style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     color: Color(0xFFFF7466)
                   ),),



                ),
                DealsWidget(),
                SizedBox(height: 10,),

      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 10,top: 15),
        child: Text("Newest Products",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFF7466)
        ),),
      ),
                ItemsWidget(),

              ],

            ),
          )
        ],


      ),
    );
  }
}
