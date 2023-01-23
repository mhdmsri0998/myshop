import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/myOrder.dart';
class myappbar extends StatelessWidget {
  const myappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Get.to(myOrder());
            },
            child: Icon(
              Icons.shopping_cart,

              size: 30,
              color: Color(0XFF475269),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("mhdmsri",
            style: TextStyle(

              fontSize:20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
          ),
          Spacer(),
          Icon(
            Icons.notifications_active_sharp,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
