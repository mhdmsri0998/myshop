import 'package:flutter/material.dart';
import 'package:shopmy/Widget/load.dart';
import 'package:shopmy/data/myResponse.dart';


import '../Widget/OrderItem.dart';
class myOrder extends StatelessWidget {
  const myOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back,color: Colors.black,),
            SizedBox(width: 10,),
            Text("MyOrder",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black
            ),),
  Spacer(),
            Icon(Icons.shopping_cart,
            size: 30,
              color: Colors.black,
            )
          ],
        ),
        
      ),
      body: FutureBuilder(
        future: myResponse.order_list(),

    builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    if (snapshot.hasData) {

    return ListView(
    children: [
    for(int i=1;i<snapshot.data.length;i++)

    OrderItem(
      img: snapshot.data['data'][i]['product']['image'].toString(),

      id: snapshot.data['data'][i]['product']['id'].toString(),

      title: snapshot.data['data'][i]['product']['title'].toString(),
    //status
      status: snapshot.data['data'][i]['status'].toString(), price: '',

    ),
    ],
    );
    }
    else return loading();
    }
      ),
    );
  }
}
